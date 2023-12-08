$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
#$url        = 'https://www.eizoglobal.com/support/db/files/software/software/lcd/ScreenInStyle/1.1.13_client/SIS1113_Setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = 'https://www.eizoglobal.com/support/db/files/software/software/lcd/ScreenInStyle/1.1.13_client/SIS1113_Setup.exe'

  softwareName  = 'ScreenInStyle*'

  checksum      = 'e7ef990f415493abda43b1c77d6094492694c25996ae70d4e648a65d7d626352'
  checksumType  = 'sha256'

  validExitCodes= @(0)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs
