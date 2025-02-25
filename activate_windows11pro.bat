@echo off

:: รอบแรก
echo Uninstalling current product key...
slmgr.vbs /upk
echo Clearing product key from registry...
slmgr.vbs /cpky
echo Clearing KMS settings...
slmgr.vbs /ckms
echo Checking available editions for upgrade...
DISM /online /Get-TargetEditions
echo Configuring LicenseManager service to start automatically...
sc config LicenseManager start= auto & net start LicenseManager
echo Configuring Windows Update service to start automatically...
sc config wuauserv start= auto & net start wuauserv
echo Changing product key...
changepk.exe /productkey VK7JG-NPHTM-C97JM-9MPGT-3V66T
echo Installing product key...
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
echo Setting KMS server...
slmgr /skms kms8.msguides.com
echo Activating Windows...
slmgr /ato
echo All commands executed (1st round). Please wait...
pause

:: รอบที่สอง
echo Re-running commands...
echo Uninstalling current product key...
slmgr.vbs /upk
echo Clearing product key from registry...
slmgr.vbs /cpky
echo Clearing KMS settings...
slmgr.vbs /ckms
echo Checking available editions for upgrade...
DISM /online /Get-TargetEditions
echo Configuring LicenseManager service to start automatically...
sc config LicenseManager start= auto & net start LicenseManager
echo Configuring Windows Update service to start automatically...
sc config wuauserv start= auto & net start wuauserv
echo Changing product key...
changepk.exe /productkey VK7JG-NPHTM-C97JM-9MPGT-3V66T
echo Installing product key...
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
echo Setting KMS server...
slmgr /skms kms8.msguides.com
echo Activating Windows...
slmgr /ato
echo All commands executed (2nd round). Please reboot your system if needed.
pause
