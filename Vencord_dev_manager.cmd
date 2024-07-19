@echo off

set /p UserInput= "1. Install Vencord | 2. Update Vencord | 3. Install plugins | 4. Update plugins | 5. Install themes | 6. Build: "
	if /i "%UserInput%"=="1" (
		cd %USERPROFILE%\Documents
		git clone https://github.com/Vendicated/Vencord.git
		cd Vencord
		npm i -g pnpm
		pnpm i
		pnpm build
		pnpm inject
	pause
)
	if /i "%UserInput%"=="2" (
		cd %USERPROFILE%\Documents\Vencord
		pnpm inject
	pause
)
	if /i "%UserInput%"=="3" (
		cd %USERPROFILE%\Documents\Vencord\src
		mkdir userplugins
		cd userplugins
		git clone https://github.com/TOR1MA/vc-move-everyone
		git clone https://github.com/Syncxv/vc-message-logger-enhanced
		git clone https://github.com/Syncxv/vc-gif-collections
		git clone https://github.com/nyakowint/replaceActivityTypes
		git clone https://github.com/D3SOX/vc-betterActivities
		mkdir findReply
		cd findReply
		curl https://raw.githubusercontent.com/waresnew/Vencord/findreply/src/plugins/findReply/index.tsx -O
		curl https://raw.githubusercontent.com/waresnew/Vencord/findreply/src/plugins/findReply/ReplyNavigator.tsx -O
		curl https://raw.githubusercontent.com/waresnew/Vencord/findreply/src/plugins/findReply/styles.css -O
		cd %USERPROFILE%\Documents\Vencord\src\plugins\userVoiceShow
		curl https://raw.githubusercontent.com/vishnyanetchereshnya/Vencord/UserVoiceShow/src/plugins/userVoiceShow/index.tsx -O
		cd %USERPROFILE%\Documents\Vencord\src\plugins\userVoiceShow\components
		curl https://raw.githubusercontent.com/vishnyanetchereshnya/Vencord/UserVoiceShow/src/plugins/userVoiceShow/components/VoiceChannelSection.css -O
		curl https://raw.githubusercontent.com/vishnyanetchereshnya/Vencord/UserVoiceShow/src/plugins/userVoiceShow/components/VoiceChannelSection.tsx -O
		cd %USERPROFILE%\Documents\Vencord\src\plugins\permissionsViewer
		curl https://raw.githubusercontent.com/PonyGirlDShadow/Vencord/main/src/plugins/permissionsViewer/index.tsx -O
		pnpm build
	pause
)
	if /i "%UserInput%"=="4" (
		echo vc-gif-collections
		cd %USERPROFILE%\Documents\Vencord\src\userplugins\vc-gif-collections
		git pull
		echo vc-message-logger-enhanced
		cd %USERPROFILE%\Documents\Vencord\src\userplugins\vc-message-logger-enhanced
		git pull
		echo replaceActivityTypes
		cd %USERPROFILE%\Documents\Vencord\src\userplugins\replaceActivityTypes
		git pull
		echo vc-betterActivities
		cd %USERPROFILE%\Documents\Vencord\src\userplugins\vc-betterActivities
		git pull
		echo vc-move-everyone
		cd %USERPROFILE%\Documents\Vencord\src\userplugins\vc-move-everyone
		git pull
		cd %USERPROFILE%\Documents\Vencord\src\userplugins\findReply
		curl https://raw.githubusercontent.com/waresnew/Vencord/findreply/src/plugins/findReply/index.tsx -O
		curl https://raw.githubusercontent.com/waresnew/Vencord/findreply/src/plugins/findReply/ReplyNavigator.tsx -O
		curl https://raw.githubusercontent.com/waresnew/Vencord/findreply/src/plugins/findReply/styles.css -O
		pnpm build
	pause
)
	if /i "%UserInput%"=="5" (
		cd %USERPROFILE%\AppData\Roaming\Vencord\themes
		curl https://raw.githubusercontent.com/TOR1MA/vc-themes/main/themes/Random.Things.css -O
		curl https://raw.githubusercontent.com/TOR1MA/vc-themes/main/themes/Emoji.Replace.css -O
		curl https://raw.githubusercontent.com/TOR1MA/vc-themes/main/themes/Modern.Theme.css -O
	pause
)
	if /i "%UserInput%"=="6" (
		cd %USERPROFILE%\Documents\Vencord
		pnpm build
)
