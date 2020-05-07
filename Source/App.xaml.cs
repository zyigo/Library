using Prism_WPF_Template.Views;
using Prism.Ioc;
using Prism.Modularity;
using System.Windows;

namespace Prism_WPF_Template
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
    }
}
