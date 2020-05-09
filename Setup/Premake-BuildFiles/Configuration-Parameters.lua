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