rem INSTALL Prism.DryIoc FROM NUGET
	cd Setup-Config && nuget install Prism.DryIoc -OutputDirectory ../.packages

rem INSTALL Prism.WPF FROM NUGET
	cd Setup-Config && nuget install Prism.WPF -OutputDirectory ../.packages

rem INSTALL Fluent.Ribbon FROM NUGET
	cd Setup-Config && nuget install Fluent.Ribbon -OutputDirectory ../.packages

rem SETUP VS 2019 SOLUTION
	cd .. && call Setup-Config\Premake\premake5.exe vs2019 --file=Setup-Config\Builder.lua

rem CONFIRM PACKAGES ARE INSTALLED AND READY
	cd Setup-Config && nuget restore ../Library.sln
	PAUSE