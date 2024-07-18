@echo off

set /p UserInput= "1. Vencord | 2. Update plugins | 3. Exit and build: "
	if /i "%UserInput%"=="1" (
		set /p UserInput= "1. Install Vencord | 2. Update Vencord"
			if /i "%UserInput%"=="1" (
				cd %USERPROFILE%\Documents
				git clone https://github.com/Vendicated/Vencord.git
				cd Vencord
				pnpm i
				pnpm i -g pnpm
				pnpm build
				pnpm inject
			)
			if /i "%UserInput%"=="2" (
				cd %USERPROFILE%\Documents\Vencord
				pnpm inject
			)
		pause
)
	if /i "%UserInput%"=="2" (
		set /p UserInput= "1. gif collections | 2. message logger | 3. replace activities: "
			if /i "%UserInput%"=="1" (
				cd %USERPROFILE%\Documents\Vencord\src\userplugins\vc-gif-collections
				git pull
				pnpm build
			)
			if /i "%UserInput%"=="2" (
				cd %USERPROFILE%\Documents\Vencord\src\userplugins\vc-message-logger-enhanced
				git pull
				pnpm build
			)
			if /i "%UserInput%"=="3" (
				cd %USERPROFILE%\Documents\Vencord\src\userplugins\replaceActivityTypes
				git pull
				pnpm build
			)
		pause
)
	if /i "%UserInput%"=="3" (
		cd %USERPROFILE%\Documents\Vencord
		pnpm build
	pause
)