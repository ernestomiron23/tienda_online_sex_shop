using PdfSharpCore.Fonts;
using sex_shopv2.Views;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using ZXing.Net.Mobile.Forms;
using Rg.Plugins.Popup;
using Rg.Plugins.Popup.Services;

namespace sex_shopv2
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            //MainPage = new MainPage();
            //MainPage = new NavigationPage(new ProductosPage());
            //MainPage = new NavigationPage(new login());
            MainPage = new NavigationPage(new SplashScreenPage());

        }

        protected override void OnStart()
        {
           // Rg.Plugins.Popup.Popup.Init();
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
