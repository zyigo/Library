project "Library"
	kind "WindowedApp"
	location "../../%{MainFolder}/%{prj.name}"
	language "C#"
	flags{"WPF"}
	targetdir ("../../bin/" .. outputdir)
	objdir ("../../bin-int/" .. outputdir)
	
	LoadNuget("Library","../NugetPackages.txt")

	files{
	"../../%{MainFolder}/%{prj.name}/**.cs",
	"../../%{MainFolder}/%{prj.name}/**.resx",
	"../../%{MainFolder}/%{prj.name}/**.settings",
	"../../%{MainFolder}/%{prj.name}/**.config",
	"../../%{MainFolder}/%{prj.name}/**.xaml"
	}

	-- Links to Projects
	links {"Library.Modules.Browser"}
	links {"Library.Core"}

	-- Default System Links
	links ("Microsoft.CSharp")
	links ("PresentationCore")
	links ("PresentationFramework")
	links ("System")
	links ("System.Core")
	links ("System.Data")
	links ("System.Data.DataSetExtensions")
	links ("System.Net.Http")
	links ("System.Xaml")
	links ("System.Xml")
	links ("System.Xml.Linq")
	links ("WindowsBase")

	dofile "Configuration-Parameters.lua"