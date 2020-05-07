rem INSTALL PRISM.DRYIOC FROM NUGET
	cd Setup-Config && nuget install Prism.DryIoc -OutputDirectory ../Source/Packages

rem SETUP VS 2019 SOLUTION
	cd .. && call Setup-Config\Premake\premake5.exe vs2019 --file=Setup-Config\Builder.lua

rem CONFIRM PACKAGES ARE INSTALLED AND READY
	cd Setup-Config && nuget restore ../Library.sln
	PAUSE