using sex_shopv2.Models;
using sex_shopv2.Services;
using System;
using System.Collections.Generic;
using Xamarin.Forms;
using MySqlConnector;
using System.IO;
using sex_shopv2.Converters;
using PdfSharpCore.Drawing;
using PdfSharpCore.Fonts;
using PdfSharpCore.Pdf;
using ZXing.Common;
using ZXing;

namespace sex_shopv2.Views
{
    internal class CarritoPage : ContentPage
    {
        private ListView listView;
        private List<CarritoItem> carritoItems;
        private decimal totalAPagar;
        private readonly MySqlService mySqlService;
        private readonly CarritoService carritoService;
        private readonly Label totalPrecioLabel;
        private int clienteId;

        public CarritoPage(int clienteId)
        {
            Title = "Carrito de Compras";
            this.clienteId = clienteId;

            mySqlService = new MySqlService();
            carritoService = new CarritoService(mySqlService);

            listView = new ListView
            {
                ItemTemplate = new DataTemplate(() =>
                {
                    var image = new Image
                    {
                        HeightRequest = 50,
                        WidthRequest = 50,
                        Aspect = Aspect.AspectFill
                    };
                    image.SetBinding(Image.SourceProperty, new Binding("Producto.Imagen", converter: new ByteArrayToImageSourceConverter()));

                    var nombreLabel = new Label();
                    nombreLabel.SetBinding(Label.TextProperty, "Producto.Nombre");

                    var cantidadLabel = new Label();
                    cantidadLabel.SetBinding(Label.TextProperty, "Cantidad");

                    var precioLabel = new Label();
                    precioLabel.SetBinding(Label.TextProperty, new Binding("Producto.Precio", stringFormat: "{0:C}"));

                    var menosButton = new Button
                    {
                        Text = "-",
                        FontSize = 15,
                        HeightRequest = 20,
                        WidthRequest = 30,
                        BackgroundColor = Color.Transparent,
                        BorderColor = Color.Transparent,
                        TextColor = Color.Black
                    };

                    menosButton.Clicked += (sender, e) =>
                    {
                        var button = sender as Button;
                        var item = button.BindingContext as CarritoItem;
                        if (item.Cantidad > 1)
                        {
                            item.Cantidad--;
                            carritoService.ActualizarCantidad(item.Producto.Id, clienteId, item.Cantidad);
                            LoadCarritoItems(clienteId);
                        }
                    };

                    var masButton = new Button
                    {
                        Text = "+",
                        FontSize = 15,
                        HeightRequest = 30,
                        WidthRequest = 30,
                        BackgroundColor = Color.Transparent,
                        BorderColor = Color.Transparent,
                        TextColor = Color.Black
                    };

                    masButton.Clicked += (sender, e) =>
                    {
                        var button = sender as Button;
                        var item = button.BindingContext as CarritoItem;
                        item.Cantidad++;
                        carritoService.ActualizarCantidad(item.Producto.Id, clienteId, item.Cantidad);
                        LoadCarritoItems(clienteId);
                    };

                    var eliminarButton = new ImageButton
                    {
                        Source = "basura.png", 
                        HeightRequest = 30,
                        WidthRequest = 30,
                        BackgroundColor = Color.Transparent,
                        BorderColor = Color.Transparent,
                    };

                    eliminarButton.Clicked += (sender, e) =>
                    {
                        var button = sender as ImageButton;
                        var item = button.BindingContext as CarritoItem;
                        carritoService.EliminarDelCarrito(item.Producto.Id, clienteId);
                        LoadCarritoItems(clienteId);
                    };

                    var stackLayout = new StackLayout
                    {
                        Orientation = StackOrientation.Horizontal,
                        Children =
                        {
                            image,
                            new StackLayout
                            {
                                HorizontalOptions = LayoutOptions.StartAndExpand,
                                Children = { nombreLabel, cantidadLabel }
                            },
                            menosButton,
                            masButton,
                            eliminarButton,
                            precioLabel
                        }
                    };
                    var viewCell = new ViewCell { View = stackLayout };
                    viewCell.Tapped += async (sender, e) =>
                    {
                        var item = (CarritoItem)viewCell.BindingContext;
                        if (item != null)
                        {
                            await Navigation.PushModalAsync(new CarritoProductoDetallePage(item));
                        }
                    };

                    return viewCell;
                })
            };

            totalPrecioLabel = new Label
            {
                FontAttributes = FontAttributes.Bold,
                FontSize = 20
            };

            var totalLabel = new Label
            {
                Text = "Total a Pagar:",
                FontAttributes = FontAttributes.Bold,
                FontSize = 20
            };

            var comprarButton = new Button
            {
                Text = "Comprar",
                FontAttributes = FontAttributes.Bold,
                FontSize = 20,
                BackgroundColor = Color.Green,
                TextColor = Color.White,
            };

            comprarButton.Clicked += OnComprarClicked;

            Content = new StackLayout
            {
                Children =
                {
                    listView,
                    new StackLayout
                    {
                        Orientation = StackOrientation.Horizontal,
                        HorizontalOptions = LayoutOptions.EndAndExpand,
                        Children = { totalLabel, totalPrecioLabel }
                    },
                    comprarButton
                }
            };

            LoadCarritoItems(clienteId);
        }

        private void LoadCarritoItems(int clienteId)
        {
            using (var conn = mySqlService.GetConnection())
            {
                conn.Open();

                using (var cmd = new MySqlCommand("SELECT c.*, p.nombre AS NombreProducto, p.precio AS PrecioUnitario, p.imagen AS ImagenProducto, p.descripción AS DescripcionProducto " +
                                   "FROM Carrito c " +
                                   "JOIN Productos p ON c.producto_id = p.producto_id " +
                                   "WHERE c.cliente_id = @clienteId", conn))
                {
                    cmd.Parameters.AddWithValue("@clienteId", clienteId);

                    using (var reader = cmd.ExecuteReader())
                    {
                        carritoItems = new List<CarritoItem>();
                        totalAPagar = 0;

                        while (reader.Read())
                        {
                            var carritoItem = new CarritoItem
                            {
                                Producto = new Producto
                                {
                                    Id = reader.GetInt32("producto_id"),
                                    Nombre = reader.GetString("NombreProducto"),
                                    Precio = reader.GetDecimal("PrecioUnitario"),
                                    Imagen = (byte[])reader["ImagenProducto"],
                                    Descripcion = reader.GetString("DescripcionProducto")
                                },
                                Cantidad = reader.GetInt32("cantidad")
                            };

                            carritoItems.Add(carritoItem);
                            totalAPagar += carritoItem.Producto.Precio * carritoItem.Cantidad;
                        }
                    }
                }
            }

            listView.ItemsSource = carritoItems;
            totalPrecioLabel.Text = $"{totalAPagar:C}";
        }

        private void OnComprarClicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new ConfirmacionCompraPage(clienteId, carritoItems, totalAPagar));
        }



    }
}