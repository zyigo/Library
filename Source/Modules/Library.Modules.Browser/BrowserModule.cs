using Library.Modules.Browser.Views;
using Prism.Ioc;
using Prism.Modularity;
using Prism.Regions;

namespace Library.Modules.Browser
{
    public class BrowserModule : IModule
    {
        private readonly IRegionManager _regionManager;

        public BrowserModule(IRegionManager regionManager)
        {
            _regionManager = regionManager;
        }

        public void OnInitialized(IContainerProvider containerProvider)
        {
            _regionManager.RegisterViewWithRegion("MainRegion", typeof(ViewA));
        }

        public void RegisterTypes(IContainerRegistry containerRegistry)
        {
            
        }
    }
}