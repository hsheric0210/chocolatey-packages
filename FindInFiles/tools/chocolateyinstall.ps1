$ErrorActionPreference = 'Stop'

# Will be automatically filled
$packageArgs = @{
  packageName   = 'FindInFiles'
  fileType      = 'exe'
  url           = 'https://github.com/toolscode/findinfiles/releases/download/v3.6.26/findinfiles_win_x64_b416.exe'
  softwareName  = 'FindInFiles *'
  checksum      = ''
  checksumType  = ''
  silentArgs   = '/S'
  validExitCodes= @(0)
}
# Will be automatically filled

Install-ChocolateyPackage @packageArgs
