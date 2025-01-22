$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
#$url        = 'https://www.eizoglobal.com/support/db/files/software/software/lcd/ScreenInStyle/1.1.13_client/SIS1113_Setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = 'https://www.eizoglobal.com/support/db/files/software/software/lcd/ScreenInStyle/1.1.16_client/SIS1116_Setup.exe'

  softwareName  = 'ScreenInStyle*'

  checksum      = '12c85b98a42523972219a831f3dcbf0ea094ac30928c9361f75fa802340a678d'
  checksumType  = 'sha256'

  validExitCodes= @(0)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs
