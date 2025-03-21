
# WinFaxina

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

- Windows 10 ou Windows 11 com privilégios administrativos.
- PowerShell instalado.
- Permissão para execução de scripts (pode ser necessário ajustar a política de execução usando `Set-ExecutionPolicy RemoteSigned`).

## Instruções de Uso

### Método 1: Baixando e Executando o Script

1. **Baixe o script `winfaxina.ps1`.**
2. **Abra o PowerShell como Administrador.**
3. **Habilite a execução de scripts** (caso necessário):
   ```powershell
   Set-ExecutionPolicy Unrestricted -Scope CurrentUser
   ```
4. **Navegue até o diretório onde o script foi salvo:**
   ```powershell
   cd C:\caminho\para\o\script
   ```
5. **Execute o script:**
   ```powershell
   .\winfaxina.ps1
   ```

   O script executará as seguintes tarefas:
   - Limpeza dos arquivos temporários do usuário e do sistema.
   - Esvaziamento da Lixeira.
   - Limpeza da pasta Prefetch.
   - Limpeza do cache de atualizações.
   - Remoção de logs e relatórios de erros antigos.
   - Otimização do componente store do Windows via DISM.
   - Limpeza dos caches dos navegadores (Chrome, Edge e Firefox).
   - Limpeza de arquivos temporários de aplicativos.

## Atenção

- **Uso por sua própria conta e risco:**  
  Este script é fornecido sem garantias. O usuário é o único responsável por quaisquer danos ou perdas decorrentes do seu uso. Teste o script em um ambiente controlado antes de aplicá-lo em sistemas críticos.

- **Backup:**  
  Faça backup dos seus dados antes de executar o script.

## Contribuições

Contribuições, sugestões e melhorias são bem-vindas. Sinta-se à vontade para abrir issues ou enviar pull requests.

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).
