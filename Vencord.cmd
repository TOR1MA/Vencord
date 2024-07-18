@echo off

set /p UserInput= "1. Install Vencord | 2. Update Vencord | 3. Install userplugins | 4. Update plugins | 5. Build: "
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
		git clone https://github.com/TOR1MA/userplugins
		cd %USERPROFILE%\Documents\Vencord\src\userplugins
		del readme.md
		git clone https://github.com/Syncxv/vc-message-logger-enhanced
		git clone https://github.com/Syncxv/vc-gif-collections
		git clone https://github.com/nyakowint/replaceActivityTypes
		git clone https://github.com/D3SOX/vc-betterActivities
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
				echo MoveEveryone and findReply
				cd %USERPROFILE%\Documents\Vencord\src\userplugins
				git pull
				pnpm build
	pause
)
	if /i "%UserInput%"=="5" (
		cd %USERPROFILE%\Documents\Vencord
		pnpm build
	pause
)
