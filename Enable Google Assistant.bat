:: @echo off
::%LOCALAPPDATA%\Microsoft\WindowsApps\MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe\WSAClient.exe

adb start-server
adb connect 127.0.0.1:58526 > nul
adb -s 127.0.0.1:58526 shell settings put --user 0 secure voice_interaction_service com.google.android.googlequicksearchbox/com.google.android.voiceinteraction.GsaVoiceInteractionService

:: %LOCALAPPDATA%\Microsoft\WindowsApps\MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe\WSAClient.exe /launch wsa://com.google.android.apps.googleassistant

adb -s 127.0.0.1:58526 shell monkey -p com.google.android.apps.googleassistant -v 1
adb kill-server
