# Changelog

## 2019-03-05 Version 1.0.1

* `extra` - added more verbosity and try/catch pair in `/azure/bootstrap.ps1` and `/azure/post-phase-4.ps1`
* `extra` - removed .netframwework 3.5 and powershell 2 from installed features
* added extra step as `bootstrap.cmd` - some Windows 2016 Microsoft images were unable to process powershell script via packer until elevated privileges were added
* expanded both Windows 2016 and Windows 2019 with image.state check after deprovisioning.
* tested with `packer` version  1.3.5

## 2019-03-03 Version 1.0.0 - Initial release