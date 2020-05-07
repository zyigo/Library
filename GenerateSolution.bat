rem INSTALL PRISM.DRYIOC FROM NUGET
	cd Setup-Config && nuget install Prism.DryIoc -OutputDirectory ../.packages

rem INSTALL PRISM.WPF FROM NUGET
	cd Setup-Config && nuget install Prism.WPF -OutputDirectory ../.packages

rem SETUP VS 2019 SOLUTION
	cd .. && call Setup-Config\Premake\premake5.exe vs2019 --file=Setup-Config\Builder.lua

rem CONFIRM PACKAGES ARE INSTALLED AND READY
	cd Setup-Config && nuget restore ../Library.sln
	PAUSE