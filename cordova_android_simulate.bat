
REM Creado con App Builder de DecSoft v2018.127
REM Más información en https://www.davidesperalta.com/

@ECHO OFF
CLS

REM Set this directory as the current one
CD %~dp0

ECHO.
ECHO Creado con App Builder de DecSoft v2018.127
ECHO.
ECHO Más información en https://www.davidesperalta.com/
ECHO.

REM Añadir la plataforma Android para nuestra app
CALL cordova platform add android

REM Añadir el plugin Whilelist a nuestra app
CALL cordova plugin add cordova-plugin-whitelist

REM Añadir el plugin Location a nuestra app
CALL cordova plugin add cordova-plugin-geolocation

REM Añadir el plugin Dialogs para nuestra app
CALL cordova plugin add cordova-plugin-dialogs

REM Añadir el plugin Splashscreen a nuestra app
CALL cordova plugin add cordova-plugin-splashscreen

REM Construir nuestra app para la plataforma Android
CALL cordova build android

REM Run Apache Cordova simulate (install if needed: npm install -g cordova-simulate)
CALL simulate android

REM Pausa la ejecución del script, así podemos ver sus resultados
PAUSE
