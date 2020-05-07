dofile "Setup-Parameters.lua"
workspace "%{SolutionName}"
	location ".."
	architecture "x86_64"
	startproject "Core"

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

project "Core"
	kind "WindowedApp"
  location "../%{MainFolder}/"
  language "C#"
	flags{"WPF"}
targetdir ("../bin/" .. outputdir .. "/%{prj.name}")
	objdir ("../bin-int/" .. outputdir .. "/%{prj.name}")

dofile "NugetReferences.lua"

files{
"../%{MainFolder}/**.cs",
"../%{MainFolder}/**.resx",
"../%{MainFolder}/**.settings",
"../%{MainFolder}/**.config",
"../%{MainFolder}/**.xaml"}

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