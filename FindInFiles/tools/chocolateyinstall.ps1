$ErrorActionPreference = 'Stop'

# Will be automatically filled
$packageArgs = @{
  packageName   = 'FindInFiles'
  fileType      = 'EXE'
  url           = 'https://github.com/toolscode/findinfiles/releases/download/v3.6.26/findinfiles_win_x64_b416.exe'
  softwareName  = 'FindInFiles*'
  checksum      = '94F6F57C60B6D92F03BAA40BD75FE0092F2E9B04222243CB763D796F7702C27D'
  checksumType  = 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}
# Will be automatically filled

Install-ChocolateyPackage @packageArgs
