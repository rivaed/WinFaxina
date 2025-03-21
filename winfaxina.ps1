<#
    Windows Optimization Script
    ATENÇÃO: Este script é fornecido sem garantias. Ao executá-lo, você assume todas as responsabilidades e riscos.
#>

# Função para verificar se o script está sendo executado como Administrador
function Test-Admin {
    $currentUser = [Security.Principal.WindowsIdentity]::GetCurrent()
    $principal = New-Object Security.Principal.WindowsPrincipal($currentUser)
    if (-not $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
        Write-Error "Este script precisa ser executado como Administrador."
        exit
    }
}

Test-Admin

# Limpar pastas Temp do usuário e do sistema
function Clean-TempFolders {
    Write-Host "Limpando pastas Temp..."
    $userTemp = $env:TEMP
    $systemTemp = "C:\Windows\Temp"
    try {
        Remove-Item "$userTemp\*" -Recurse -Force -ErrorAction SilentlyContinue
        Write-Host "Pasta TEMP do usuário limpa."
    } catch {
        Write-Warning "Erro ao limpar a pasta TEMP do usuário."
    }
    try {
        Remove-Item "$systemTemp\*" -Recurse -Force -ErrorAction SilentlyContinue
        Write-Host "Pasta Temp do sistema (C:\Windows\Temp) limpa."
    } catch {
        Write-Warning "Erro ao limpar C:\Windows\Temp."
    }
}

# Esvaziar a Lixeira
function Empty-RecycleBin {
    Write-Host "Esvaziando a Lixeira..."
    try {
        Clear-RecycleBin -Force -ErrorAction SilentlyContinue
        Write-Host "Lixeira esvaziada."
    } catch {
        Write-Warning "Erro ao esvaziar a Lixeira."
    }
}

# Limpar a pasta Prefetch
function Clean-Prefetch {
    Write-Host "Limpando a pasta Prefetch..."
    $prefetchPath = "C:\Windows\Prefetch\*"
    try {
        Remove-Item $prefetchPath -Recurse -Force -ErrorAction SilentlyContinue
        Write-Host "Pasta Prefetch limpa."
    } catch {
        Write-Warning "Erro ao limpar a pasta Prefetch."
    }
}

# Limpar cache de atualizações do Windows
function Clean-UpdateCache {
    Write-Host "Limpando cache de atualizações do Windows..."
    $updateCache = "C:\Windows\SoftwareDistribution\Download\*"
    try {
        Remove-Item $updateCache -Recurse -Force -ErrorAction SilentlyContinue
        Write-Host "Cache de atualizações limpo."
    } catch {
        Write-Warning "Erro ao limpar cache de atualizações."
    }
}

# Limpar logs e relatórios de erros antigos
function Clean-Logs {
    Write-Host "Limpando logs e relatórios de erros antigos..."
    # Exemplo: limpar relatórios do Windows Error Reporting
    $werPath = "C:\ProgramData\Microsoft\Windows\WER\ReportArchive\*"
    try {
        Remove-Item $werPath -Recurse -Force -ErrorAction SilentlyContinue
        Write-Host "Relatórios de erros antigos removidos."
    } catch {
        Write-Warning "Erro ao limpar relatórios de erros."
    }
}

# Otimizar o componente store do Windows
function Optimize-ComponentStore {
    Write-Host "Otimização do componente store do Windows..."
    try {
        DISM /Online /Cleanup-Image /StartComponentCleanup | Out-Null
        Write-Host "Componente store otimizado."
    } catch {
        Write-Warning "Erro ao otimizar o componente store."
    }
}

# Limpar cache dos navegadores (Chrome, Edge e Firefox)
function Clean-BrowserCache {
    Write-Host "Limpando caches dos navegadores..."
    
    # Google Chrome
    $chromeCache = "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Cache\*"
    if (Test-Path $chromeCache) {
        try {
            Remove-Item $chromeCache -Recurse -Force -ErrorAction SilentlyContinue
            Write-Host "Cache do Google Chrome limpo."
        } catch {
            Write-Warning "Erro ao limpar o cache do Google Chrome."
        }
    }
    
    # Microsoft Edge
    $edgeCache = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Cache\*"
    if (Test-Path $edgeCache) {
        try {
            Remove-Item $edgeCache -Recurse -Force -ErrorAction SilentlyContinue
            Write-Host "Cache do Microsoft Edge limpo."
        } catch {
            Write-Warning "Erro ao limpar o cache do Microsoft Edge."
        }
    }
    
    # Firefox (o caminho pode variar conforme o perfil)
    $firefoxCache = "$env:APPDATA\Mozilla\Firefox\Profiles\*.default-release\cache2\entries\*"
    if (Test-Path $firefoxCache) {
        try {
            Remove-Item $firefoxCache -Recurse -Force -ErrorAction SilentlyContinue
            Write-Host "Cache do Firefox limpo."
        } catch {
            Write-Warning "Erro ao limpar o cache do Firefox."
        }
    }
}

# Limpar arquivos temporários de aplicativos (exemplo de instaladores)
function Clean-AppTemp {
    Write-Host "Limpando arquivos temporários de aplicativos..."
    # Exemplo: pasta de cache de instaladores (ajuste conforme necessário)
    $installerTemp = "C:\Windows\Installer\$PatchCache$\*"
    if (Test-Path $installerTemp) {
        try {
            Remove-Item $installerTemp -Recurse -Force -ErrorAction SilentlyContinue
            Write-Host "Arquivos temporários de instaladores limpos."
        } catch {
            Write-Warning "Erro ao limpar arquivos temporários de instaladores."
        }
    }
}

# Execução das funções
Clean-TempFolders
Empty-RecycleBin
Clean-Prefetch
Clean-UpdateCache
Clean-Logs
Optimize-ComponentStore
Clean-BrowserCache
Clean-AppTemp

Write-Host "Otimização concluída. Seu sistema teve uma 'faxina'!"
