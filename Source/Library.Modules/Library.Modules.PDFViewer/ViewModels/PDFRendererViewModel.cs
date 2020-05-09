using Prism.Commands;
using Prism.Mvvm;
using Prism.Regions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Interop;

namespace Library.Modules.PDFViewer.ViewModels
{
    public class PDFRendererViewModel : BindableBase,INavigationAware
    {
        private string _address;
        public string Address
        {
            get { return _address; }
            set { SetProperty(ref _address, value); }
        }

        public PDFRendererViewModel()
        {
            //Address = "file:///C:/Dev/Library/Test_Folder/TEST%20PDF.pdf";
        }

        public void OnNavigatedTo(NavigationContext navigationContext)
        {
            Address = navigationContext.Parameters["Address"].ToString();
            //Address = "file:///C:/Dev/Library/Test_Folder/TEST%20PDF.pdf";
        }

        public bool IsNavigationTarget(NavigationContext navigationContext)
        {
            return true;//throw new NotImplementedException();
        }

        public void OnNavigatedFrom(NavigationContext navigationContext)
        {
            //throw new NotImplementedException();
        }
    }
}
