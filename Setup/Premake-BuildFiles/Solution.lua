-- Folder name that the code base is held in. This must be confirmed before generating the solution.
MainFolder = "Source"
ModuleFolder = "Library.Modules"


workspace "Library"
	location "../.."
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

	-- Build Library
	dofile "Library.lua"

	-- Build Library.Core
	dofile "Library.Core.lua"	

	-- Build Library.Modules
	group "Modules"
		-- Build Browser
		dofile "Library.Module.Browser.lua"