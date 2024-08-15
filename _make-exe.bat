set output=C:\\Users\\green\\OneDrive\\Desktop\\RedCraft-Releases

mkdir %output%

dotnet publish -p:TargetPlatform="win-x64" -p:Platform="Any CPU" --sc -r win-x64 -c Release -o "%output%"
dotnet publish engine\OpenRA.Launcher -p:TargetPlatform="win-x64" -p:Platform="Any CPU" --sc -r win-x64 -c Release -o "%output%"
dotnet publish engine\OpenRA.Platforms.Default -p:TargetPlatform="win-x64" -p:Platform="Any CPU" --sc -r win-x64 -c Release -o "%output%"
dotnet publish engine\OpenRA.Mods.Cnc -p:TargetPlatform="win-x64" -p:Platform="Any CPU" --sc -r win-x64 -c Release -o "%output%"

xcopy /Y /Q /D /E /R engine\glsl "%output%\glsl\*"
xcopy /Y /Q /D /E /R engine\mods "%output%\mods\*"
xcopy /Y /Q /D /E /R mods "%output%\mods\*"
xcopy /Y /Q /D /E /R "engine\global mix database.dat" "%output%"