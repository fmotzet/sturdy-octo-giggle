$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
#$url        = 'https://www.eizoglobal.com/support/db/files/software/software/lcd/ScreenInStyle/1.1.10_client/SIS1110_Setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = 'https://www.eizoglobal.com/support/db/files/software/software/lcd/ScreenInStyle/1.1.10_client/SIS1110_Setup.exe'

  softwareName  = 'ScreenInStyle*'

  checksum      = 'CBEC37FBDC7646F65BDCF667B57F9CA841051551F13A9AC6F7B474996B0734DF'
  checksumType  = 'sha256'

  validExitCodes= @(0)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs