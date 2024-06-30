using sex_shopv2.Models;
using Xamarin.Forms;
using System.IO;

namespace sex_shopv2.Views
{
    public class CarritoProductoDetallePage : ContentPage
    {
        public CarritoProductoDetallePage(CarritoItem carritoItem)
        {
            var image = new Image
            {
                HeightRequest = 200,
                WidthRequest = 200,
                Aspect = Aspect.AspectFill,
                Source = ImageSource.FromStream(() => new MemoryStream(carritoItem.Producto.Imagen))
            };

            var nombreLabel = new Label
            {
                FontAttributes = FontAttributes.Bold,
                FontSize = 24,
                Text = carritoItem.Producto.Nombre,
                HorizontalOptions = LayoutOptions.Center
            };

            var descripcionLabel = new Label
            {
                FontSize = 18,
                Text = carritoItem.Producto.Descripcion,
                HorizontalOptions = LayoutOptions.Center
            };

            var precioLabel = new Label
            {
                FontAttributes = FontAttributes.Bold,
                FontSize = 20,
                Text = string.Format("{0:C}", carritoItem.Producto.Precio),
                HorizontalOptions = LayoutOptions.Center
            };

            var cantidadLabel = new Label
            {
                FontSize = 18,
                Text = $"Cantidad: {carritoItem.Cantidad}",
                HorizontalOptions = LayoutOptions.Center
            };

            var cerrarButton = new Button
            {
                Text = "Cerrar",
                Command = new Command(async () => await Navigation.PopModalAsync())
            };

            Content = new ScrollView
            {
                Content = new StackLayout
                {
                    Padding = new Thickness(20),
                    Children =
                    {
                        image,
                        nombreLabel,
                        descripcionLabel,
                        precioLabel,
                        cantidadLabel,
                        cerrarButton
                    }
                }
            };
        }
    }
}
