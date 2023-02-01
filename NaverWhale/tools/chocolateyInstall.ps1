$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'NaverWhale'
    softwareName   = ''
    fileType       = 'exe'
    url            = 'https://installer-whale.pstatic.net/downloads/sa_installers/WhaleSetupX86.exe'
    url64bit       = 'https://installer-whale.pstatic.net/downloads/sa_installers/WhaleSetupX64.exe'
    silentArgs     = '/s'
    checksum       = 'fddaa91d8d9fb8e2b3c90e9742d8b7e593c62e2a7f4b1be5c44201a3b8e89c22'
    checksumType   = 'sha256'
    checksum64     = '41bc18f24a6a7744db5d0c7ec6ef838145c42207e104439628ab00508a874f0b'
    checksumType64 = 'sha256'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
