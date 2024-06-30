using sex_shopv2.Models;
using System.Collections.Generic;
using System.Threading.Tasks;
using System;
using Xamarin.Forms;
using ZXing.Net.Mobile.Forms;
using sex_shopv2.Services;
using MySqlConnector;

public class ConfirmacionCompraPage : ContentPage
{
    private List<CarritoItem> carritoItems;
    private decimal totalAPagar;
    private int clienteId;

    public ConfirmacionCompraPage(int clienteId, List<CarritoItem> carritoItems, decimal totalAPagar)
    {
        this.clienteId = clienteId;
        this.carritoItems = carritoItems;
        this.totalAPagar = totalAPagar;

        Title = "Confirmación de Compra";

        var direccionCliente = ObtenerDireccionCliente(clienteId);
        var nombreCliente = ObtenerNombreCliente(clienteId);

        var direccionLabel = new Label { Text = $"Dirección de envío:\n{direccionCliente}", Margin = new Thickness(0, 0, 20, 10), TextColor = Color.Black, };
        var productosLabel = new Label { Text = "Detalles del Producto:", Margin = new Thickness(0, 0, 20, 10), TextColor = Color.Black, };

        var productosListView = new ListView
        {
            ItemsSource = carritoItems,
            ItemTemplate = new DataTemplate(() =>
            {
                var nombreLabel = new Label();
                nombreLabel.SetBinding(Label.TextProperty, "Producto.Nombre");

                var cantidadLabel = new Label();
                cantidadLabel.SetBinding(Label.TextProperty, "Cantidad");

                var precioLabel = new Label();
                precioLabel.SetBinding(Label.TextProperty, new Binding("Producto.Precio", stringFormat: "{0:C}"));

                var layout = new StackLayout
                {
                    Orientation = StackOrientation.Horizontal,
                    Children = { nombreLabel, cantidadLabel, precioLabel }
                };

                return new ViewCell { View = layout };
            })
        };

        var totalLabel = new Label { Text = $"Total a Pagar: {totalAPagar:C}", FontAttributes = FontAttributes.Bold, Margin = new Thickness(20, 20, 20, 10), TextColor = Color.Black, };

        var infoUsuarioStack = new StackLayout
        {
            Children = { direccionLabel, productosLabel, productosListView, totalLabel },
            Margin = new Thickness(20)
        };

        var mostrarQRButton = new Button
        {
            Text = "Mostrar Código QR",
            HorizontalOptions = LayoutOptions.Center,
            Margin = new Thickness(20),
            BackgroundColor = Color.Green,
            TextColor = Color.White,
        };

        mostrarQRButton.Clicked += async (sender, args) =>
        {
            await MostrarCodigoQR(totalAPagar);
        };

        var mainStackLayout = new StackLayout
        {
            Padding = new Thickness(20),
            Children = { infoUsuarioStack, mostrarQRButton }
        };

        Content = mainStackLayout;
    }

    private string ObtenerDireccionCliente(int clienteId)
    {
        string direccionCompleta = string.Empty;
        var mySqlService = new MySqlService();

        using (var conn = mySqlService.GetConnection())
        {
            conn.Open();

            using (var cmd = new MySqlCommand("SELECT dirección, ciudad, estado, código_postal, país FROM Clientes WHERE cliente_id = @clienteId", conn))
            {
                cmd.Parameters.AddWithValue("@clienteId", clienteId);

                using (var reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        string direccion = reader.GetString("dirección");
                        string ciudad = reader.GetString("ciudad");
                        string estado = reader.GetString("estado");
                        string codigoPostal = reader.GetString("código_postal");
                        string pais = reader.GetString("país");

                        direccionCompleta = $"{direccion}, {ciudad}, {estado}, {codigoPostal}, {pais}";
                    }
                }
            }
        }
        return direccionCompleta;
    }

    private string ObtenerNombreCliente(int clienteId)
    {
        string nombreCompleto = string.Empty;
        var mySqlService = new MySqlService();

        using (var conn = mySqlService.GetConnection())
        {
            conn.Open();

            using (var cmd = new MySqlCommand("SELECT nombre, apellido FROM Clientes WHERE cliente_id = @clienteId", conn))
            {
                cmd.Parameters.AddWithValue("@clienteId", clienteId);

                using (var reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        string nombre = reader.GetString("nombre");
                        string apellido = reader.GetString("apellido");
                        nombreCompleto = $"{nombre} {apellido}";

                    }
                }
            }
        }
        return nombreCompleto;
    }


    private async Task MostrarCodigoQR(decimal totalAPagar)
    {
        try
        {
            var barcodeValue = $"Por Favor Pagar en oxxo \n Total: {totalAPagar:C}";

            var qrImageView = new ZXingBarcodeImageView
            {
                BarcodeFormat = ZXing.BarcodeFormat.QR_CODE,
                BarcodeOptions = new ZXing.Common.EncodingOptions
                {
                    Width = 900,
                    Height = 900
                },
                BarcodeValue = barcodeValue,
                HorizontalOptions = LayoutOptions.Center,
                VerticalOptions = LayoutOptions.CenterAndExpand
            };

            var popup = new Rg.Plugins.Popup.Pages.PopupPage
            {
                Content = new StackLayout
                {
                    HorizontalOptions = LayoutOptions.FillAndExpand,
                    VerticalOptions = LayoutOptions.FillAndExpand,
                    Padding = new Thickness(20),
                    Children = { qrImageView }
                }
            };

            await Rg.Plugins.Popup.Services.PopupNavigation.Instance.PushAsync(popup);
            popup.Disappearing += (s, args) =>
            {
                // Aquí puedes realizar acciones al cerrar la ventana emergente si es necesario
            };
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error en MostrarCodigoQR: {ex.Message}");
        }
    }
}
