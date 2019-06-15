@echo off
echo starte Service
sc config OVRService start=demand
sc start OVRService
set firststart=0
SETLOCAL EnableExtensions
set EXE=OculusClient.exe

:start
set  /a firststart+=1

echo warte 5 sekunden
ping -n 5 localhost> nul
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto FOUND
echo Oculus laeuft nicht! 
echo Firststart: %firststart%
if "%firststart%" == "1" (
	echo EXE wird gestartet!
	"C:\Program Files\Oculus\Support\oculus-client\OculusClient.exe"
) else (
	echo Oculus wurde beendet - Service wird beendet!
	sc config OVRService start=disabled
	sc stop OVRService
	goto FIN
)
goto start

:FOUND
echo Oculus laeuft.
goto start
:FIN

