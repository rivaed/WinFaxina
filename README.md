# Windows Optimization Script: Faxina no Sistema

**AVISO IMPORTANTE:**  
ESTE SCRIPT É FORNECIDO "COMO ESTÁ" SEM QUALQUER GARANTIA. AO UTILIZAR ESTE SCRIPT, VOCÊ ASSUME TODAS AS RESPONSABILIDADES E RISCOS. USE POR SUA PRÓPRIA CONTA E RISCO.  
Faça backup dos seus dados antes de executar este script.

## Descrição

O *Windows Optimization Script: Faxina no Sistema* é uma ferramenta de manutenção para Windows que automatiza diversas tarefas de limpeza e otimização. O objetivo é liberar espaço em disco e melhorar o desempenho do sistema, removendo arquivos desnecessários acumulados ao longo do tempo.

## Funcionalidades

- **Limpeza de Pastas Temp:**  
  Remove arquivos desnecessários das pastas temporárias do usuário (`%TEMP%`) e do sistema (`C:\Windows\Temp`).

- **Esvaziamento da Lixeira:**  
  Automatiza o esvaziamento do Recycle Bin.

- **Limpeza da Pasta Prefetch:**  
  Remove arquivos antigos da pasta Prefetch (com cautela, pois o sistema recria esses arquivos automaticamente).

- **Limpeza do Cache de Atualizações:**  
  Exclui arquivos residuais em `C:\Windows\SoftwareDistribution\Download` que não são mais necessários.

- **Limpeza de Logs e Relatórios de Erros:**  
  Remove logs e relatórios de erros antigos (por exemplo, do Windows Error Reporting).

- **Otimização do Componente Store do Windows:**  
  Executa o comando DISM para remover componentes obsoletos e reduzir o tamanho da imagem do sistema.

- **Limpeza de Caches de Navegadores:**  
  Limpa os caches dos principais navegadores (Google Chrome, Microsoft Edge, Firefox), sem interferir nos dados do usuário.

- **Limpeza de Arquivos Temporários de Aplicativos:**  
  Remove arquivos temporários gerados por instaladores ou outros aplicativos.

## Pré-requisitos

- Windows com privilégios administrativos.
- PowerShell instalado.
- Permissão para execução de scripts (pode ser necessário ajustar a política de execução usando `Set-ExecutionPolicy RemoteSigned`).

## Instruções de Uso

1. **Clone o repositório:**
   ```powershell
   git clone <URL_DO_REPOSITÓRIO>
   cd <NOME_DO_REPOSITÓRIO>
