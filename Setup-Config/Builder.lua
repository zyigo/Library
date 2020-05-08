dofile "Setup-Parameters.lua"
workspace "%{SolutionName}"
	location ".."
	architecture "x86_64"
	startproject "Library"

	configurations
	{
		"Debug",
		"Release",
		"Dist"
	}

	flags
	{
		"MultiProcessorCompile"
	}

	outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "Library"
	kind "WindowedApp"
  location "../%{MainFolder}/Source"
  language "C#"
	flags{"WPF"}
targetdir ("../bin/" .. outputdir) -- "/%{prj.name}")
	objdir ("../bin-int/" .. outputdir) -- "/%{prj.name}")

dofile "NugetReferences.lua"
links {"Library.Modules.Browser"}

files{
"../%{MainFolder}/Source/**.cs",
"../%{MainFolder}/Source/**.resx",
"../%{MainFolder}/Source/**.settings",
"../%{MainFolder}/Source/**.config",
"../%{MainFolder}/Source/**.xaml"}

	dofile "Links.lua"

	filter "system:windows"
		systemversion "latest"
		defines "PLATFORM_WINDOWS"

	filter "configurations:Debug"
		defines "DEBUG"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		defines "RELEASE"
		runtime "Release"
		optimize "On"

	filter "configurations:Dist"
		defines "DIST"
		runtime "Release"
		optimize "On"

group "Modules"
project "Library.Modules.Browser"
	kind "SharedLib"
  location "../%{MainFolder}/Modules/%{prj.name}"
  language "C#"
	flags{"WPF"}
targetdir ("../bin/" .. outputdir) -- "/%{MainFolder}/Modules/%{prj.name}")
	objdir ("../bin-int/" .. outputdir) -- "/%{MainFolder}/Modules/%{prj.name}")

nuget {"Prism.WPF:7.2.0.1422"}

files{
"../%{MainFolder}/Modules/%{prj.name}/**.cs",
"../%{MainFolder}/Modules/%{prj.name}/**.resx",
"../%{MainFolder}/Modules/%{prj.name}/**.settings",
"../%{MainFolder}/Modules/%{prj.name}/**.config",
"../%{MainFolder}/Modules/%{prj.name}/**.xaml"}

	dofile "Links.lua"

	filter "system:windows"
		systemversion "latest"
		defines "PLATFORM_WINDOWS"

	filter "configurations:Debug"
		defines "DEBUG"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		defines "RELEASE"
		runtime "Release"
		optimize "On"

	filter "configurations:Dist"
		defines "DIST"
		runtime "Release"
		optimize "On"