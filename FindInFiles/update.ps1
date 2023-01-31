
[CmdletBinding()]
param([switch] $Force)

. "$PSScriptRoot\..\common.ps1"

function global:au_GetLatest {
    Get-GitHubLatest `
        -Repository 'toolscode/findinfiles' `
        -FileType 'exe' `
        -IsUri64 { return $true } `
        -Latest @{
            SoftwareName   = 'FindInFiles *'
            SilentArgs     = '/S'
            ValidExitCodes = '0'
        }
}

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "^(\s*packageName\s*=\s*)'.*'$"       = "`$1'$($Latest.PackageName)'"
            "^(\s*softwareName\s*=\s*)'.*'$"      = "`$1'$($Latest.SoftwareName)'"
            "^(\s*fileType\s*=\s*)'.*'$"          = "`$1'$($Latest.FileType)'"
            "^(\s*url\s*=\s*)'.*'$"               = "`$1'$($Latest.Url64)'"
            "^(\s*silentArgs\s*=\s*)'.*'$"        = "`$1'$($Latest.SilentArgs)'"
            "^(\s*checksum\s*=\s*)'.*'$"          = "`$1'$($Latest.Checksum64)'"
            "^(\s*checksumType\s*=\s*)'.*'$"      = "`$1'$($Latest.ChecksumType64)'"
            "^(\s*validExitCodes\s*=\s*)@\(.*\)$" = "`$1@($($Latest.ValidExitCodes))"
        }
    }
}

Update-Package -ChecksumFor 32 -Force:$Force