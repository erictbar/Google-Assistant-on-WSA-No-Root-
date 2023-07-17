# Google-Assistant-on-WSA-No-Root-
A script to run Google Assistant on MagiskOnWSA without root

If your WSA is rooted, this could be a better solution for you (I have not tested it):
https://www.reddit.com/r/WSA/comments/wj7trp/tutorial_how_to_use_google_assistant_on/

**Requirements/things to change**
* ADB installed on your PC
* ADB should be in your PATH variables. If it isn't, you can edit the script to place an absolute path.
* Google Assistant should be installed on WSA, with MagiskOnWSA
* Developer Mode should be enabled on WSA
* In this case, your WSA is reachable via 127.0.0.1 on port 58526. If yours is different, edit the script. Note in my personal script, I had to edit to place the local IP address of my Windows PC. This is due to a workaround to a known issue.

**Sources:**
https://www.reddit.com/r/Windows11/comments/qg91lu/comment/hzih5ih/?utm_source=share&utm_medium=web2x&context=
https://github.com/CKylinMC/wsa-scripts

**To Do**
I spent a lot of time trying to allow this script to work if WSA is not currently running. Some of the commented out parts reflect that. I ended up just requiring the script to run with WSA open.
I also created a shortcut in my Start Menu that simply opens WSA without any apps. The target for this shortcut is:
%LOCALAPPDATA%\Microsoft\WindowsApps\MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe\WSAClient.exe

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND. I created this for myself and am sharing it in case others may want to reference it. I am not the best at batch scripting and you are welcome to fork and share your own.
