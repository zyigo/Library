
using Fluent;
using Library.Modules.PDFViewer.Views;
using Prism.Regions;
using System;
using System.Windows;

namespace Library.Views
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : RibbonWindow
    {
        private readonly IRegionManager _regionManager;

        public MainWindow(IRegionManager regionManager)
        {
            InitializeComponent();
            _regionManager = regionManager;
        }

        private void Green_Button_Click(object sender, RoutedEventArgs e)
        {
            _regionManager.RequestNavigate(Core.RegionNames.ContentRegion, new Uri("ViewA",UriKind.Relative));
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var navigationParameters = new NavigationParameters();
            navigationParameters.Add("Address", "file:///C:/Dev/Library/Test_Folder/TEST%20PDF.pdf");
            _regionManager.RequestNavigate(Core.RegionNames.ContentRegion, new Uri("PDFRenderer", UriKind.Relative),navigationParameters);
        }
    }
}
