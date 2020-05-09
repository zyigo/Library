using Library.Core;
using Library.Modules.PDFViewer.Views;
using Prism.Ioc;
using Prism.Modularity;
using Prism.Mvvm;
using Prism.Regions;

namespace Library.Modules.PDFViewer
{
    public class PDFViewerModule : IModule
    {
        private readonly IRegionManager _regionManager;

        public void OnInitialized(IContainerProvider containerProvider)
        {
            _regionManager.RegisterViewWithRegion(RegionNames.ContentRegion, typeof(PDFRenderer));
        }

        public PDFViewerModule(IRegionManager regionManager)
        {
            _regionManager = regionManager;
        }

        public void RegisterTypes(IContainerRegistry containerRegistry)
        {
            containerRegistry.RegisterForNavigation<PDFRenderer>();
        }
    }
}