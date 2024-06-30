using System.Collections.Generic;
using Xamarin.Forms;
using sex_shopv2.Models;
using sex_shopv2.Services;
using System.IO;

namespace sex_shopv2.Views
{
    internal class CategoriaPage : ContentPage
    {
        private Grid grid;
        private ProductoService productoService;
        private int clienteId;
        private int categoriaId;

        public CategoriaPage(int clienteId, int categoriaId, string categoriaNombre)
        {
            this.clienteId = clienteId;
            this.categoriaId = categoriaId;
            productoService = new ProductoService();

            Title = categoriaNombre;

            grid = new Grid
            {
                ColumnDefinitions =
                {
                    new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) },
                    new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) }
                }
            };

            var scrollView = new ScrollView
            {
                Content = grid
            };

            LoadProductosByCategoria();

            Content = scrollView;
        }

        private void LoadProductosByCategoria()
        {
            var productos = productoService.GetProductosByCategoria(categoriaId);
            AddProductsToGrid(productos);
        }

        private void AddProductsToGrid(IEnumerable<Producto> productos)
        {
            int row = 0;
            int col = 0;
            foreach (var producto in productos)
            {
                var image = new Image
                {
                    HeightRequest = 100,
                    WidthRequest = 100,
                    Aspect = Aspect.AspectFill,
                    Source = ImageSource.FromStream(() => new MemoryStream(producto.Imagen))
                };

                var stackLayout = new StackLayout
                {
                    Padding = new Thickness(10),
                    VerticalOptions = LayoutOptions.Center
                };

                var nombreLabel = new Label
                {
                    Text = producto.Nombre,
                    FontAttributes = FontAttributes.Bold,
                    FontSize = 16,
                    HorizontalOptions = LayoutOptions.Center
                };

                var precioLabel = new Label
                {
                    Text = $"{producto.Precio:C}",
                    FontSize = 14,
                    HorizontalOptions = LayoutOptions.Center
                };

                stackLayout.Children.Add(image);
                stackLayout.Children.Add(nombreLabel);
                stackLayout.Children.Add(precioLabel);

                if (row >= grid.RowDefinitions.Count)
                {
                    grid.RowDefinitions.Add(new RowDefinition { Height = GridLength.Auto });
                }

                grid.Children.Add(stackLayout, col, row);

                var tapGestureRecognizer = new TapGestureRecognizer();
                tapGestureRecognizer.Tapped += (s, e) => ShowProductDetails(producto);
                stackLayout.GestureRecognizers.Add(tapGestureRecognizer);
                image.GestureRecognizers.Add(tapGestureRecognizer);

                col++;
                if (col > 1)
                {
                    col = 0;
                    row++;
                }
            }
        }

        private async void ShowProductDetails(Producto producto)
        {
            var detailsPage = new ProductoDetallePage(producto, clienteId, new CarritoService(new MySqlService()));
            await Navigation.PushAsync(detailsPage);
        }
    }
}

