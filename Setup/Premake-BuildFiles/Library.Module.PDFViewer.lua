project "Library.Modules.PDFViewer"
			kind "SharedLib"
			location "../../%{MainFolder}/%{ModuleFolder}/%{prj.name}"
			language "C#"
			flags{"WPF"}
			targetdir ("../../bin/" .. outputdir)
			objdir ("../../bin-int/" .. outputdir)

			LoadNuget("Library.Modules.PDFViewer","../NugetPackages.txt")

			-- Project Links
			links("Library.Core")

			files {
				"%{prj.location}/**.cs",
				"%{prj.location}/**.resx",
				"%{prj.location}/**.settings",
				"%{prj.location}/**.config",
				"%{prj.location}/**.xaml"}
			
-- System Links
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