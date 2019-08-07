
@echo on 
setlocal 
cd %~dp0\.. 
:: Remove running application
taskkill /IM DesktopPet.exe /f
:: Delete the shortcuts 
del "C:\Users\user\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\DesktopPet.url"
del "C:\Users\user\Desktop\DesktopPet.url"
del "C:\Users\user\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\DesktopPet.url"
 
:: Use start to finish before we're deleted 
start /min "" cmd /c
%= Use reg to delete the app key =%
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Uninstall\DesktopPet" /f
%= Remove the app's root folder =%
rd /s /q "DesktopPet"
            