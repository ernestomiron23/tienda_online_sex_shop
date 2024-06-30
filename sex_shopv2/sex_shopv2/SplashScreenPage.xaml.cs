using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace sex_shopv2
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SplashScreenPage : ContentPage
    {
        public SplashScreenPage()
        {
            InitializeComponent();

            Device.StartTimer(TimeSpan.FromSeconds(3), () =>
            {
                Device.BeginInvokeOnMainThread(async () =>
                {
                    //await Navigation.PushAsync(new login());

                    await System.Threading.Tasks.Task.Delay(1000);

                    //await Navigation.PopModalAsync();
                    App.Current.MainPage = new NavigationPage(new login());
                });

                return false;
            });
        }

    }
}