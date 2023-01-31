$ErrorActionPreference = 'Stop'

# Will be automatically filled
$packageArgs = @{
  packageName   = 'FindInFiles'
  fileType      = 'exe'
  url           = 'https://github.com/toolscode/findinfiles/releases/download/v3.6.26/findinfiles_win_x64_b416.exe'
  softwareName  = 'FindInFiles *'
  checksum      = '94f6f57c60b6d92f03baa40bd75fe0092f2e9b04222243cb763d796f7702c27d'
  checksumType  = 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}
# Will be automatically filled

Install-ChocolateyPackage @packageArgs
