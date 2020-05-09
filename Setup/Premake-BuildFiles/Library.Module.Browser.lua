project "Library.Modules.Browser"
			kind "SharedLib"
			location "../../%{MainFolder}/%{ModuleFolder}/%{prj.name}"
			language "C#"
			flags{"WPF"}
			targetdir ("../../bin/" .. outputdir)
			objdir ("../../bin-int/" .. outputdir)

			nuget {"Prism.WPF:7.2.0.1422"}
			
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