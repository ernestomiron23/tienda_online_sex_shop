using sex_shopv2.Models;
using sex_shopv2.Services;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Xamarin.Forms;

namespace sex_shopv2.Views
{
    internal class ProductoDetallePage : ContentPage
    {
        private CarritoService carritoService;
        private Producto producto;
        private int clienteId;
        private int cantidad = 1;
        private Label cantidadLabel;

        public ProductoDetallePage(Producto producto, int clienteId, CarritoService carritoService)
        {
            this.producto = producto;
            this.clienteId = clienteId;
            this.carritoService = carritoService;

            Title = producto.Nombre;

            var image = new Image
            {
                HeightRequest = 200,
                WidthRequest = 200,
                Aspect = Aspect.AspectFill,
                Source = ImageSource.FromStream(() => new System.IO.MemoryStream(producto.Imagen))
            };

            var nombreLabel = new Label
            {
                FontAttributes = FontAttributes.Bold,
                FontSize = 24,
                Text = producto.Nombre,
                HorizontalOptions = LayoutOptions.Center
            };

            var descripcionLabel = new Label
            {
                FontSize = 18,
                Text = producto.Descripcion,
                HorizontalOptions = LayoutOptions.Center
            };

            var precioLabel = new Label
            {
                FontAttributes = FontAttributes.Bold,
                FontSize = 20,
                Text = string.Format("{0:C}", producto.Precio),
                HorizontalOptions = LayoutOptions.Center
            };

            cantidadLabel = new Label
            {
                FontSize = 18,
                Text = cantidad.ToString(),
                HorizontalOptions = LayoutOptions.Center
            };

            var menosButton = new Button
            {
                Text = "-",
                FontSize = 20
            };
            menosButton.Clicked += (sender, e) =>
            {
                if (cantidad > 1)
                {
                    cantidad--;
                    cantidadLabel.Text = cantidad.ToString();
                }
            };

            var masButton = new Button
            {
                Text = "+",
                FontSize = 20
            };
            masButton.Clicked += (sender, e) =>
            {
                cantidad++;
                cantidadLabel.Text = cantidad.ToString();
            };

            var agregarButton = new Button
            {
                Text = "Agregar al Carrito"
            };
            agregarButton.Clicked += async (sender, e) =>
            {
                carritoService.AgregarAlCarrito(producto, cantidad, clienteId);
                await DisplayAlert("Producto Agregado", "El producto ha sido agregado al carrito.", "OK");
            };

            var scrollView = new ScrollView
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
                        new StackLayout
                        {
                            Orientation = StackOrientation.Horizontal,
                            HorizontalOptions = LayoutOptions.Center,
                            Children =
                            {
                                menosButton,
                                cantidadLabel,
                                masButton
                            }
                        },
                        agregarButton
                    }
                }
            };

            Content = scrollView;
        }
    }
}