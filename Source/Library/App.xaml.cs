using Library.Views;
using Prism.Ioc;
using Prism.Modularity;
using System.Reflection;
using System.Windows;
using Library.Modules.Browser;
using Library.Modules.PDFViewer;

namespace Library
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App
    {
        protected override Window CreateShell()
        {
            return Container.Resolve<MainWindow>();
        }

        protected override void RegisterTypes(IContainerRegistry containerRegistry)
        {
            
        }

        protected override void ConfigureModuleCatalog(IModuleCatalog moduleCatalog)
        {
            moduleCatalog.AddModule<BrowserModule>();
            moduleCatalog.AddModule<PDFViewerModule>();
        }
    }
}
