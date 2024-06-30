using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySqlConnector;
using sex_shopv2.Views;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace sex_shopv2
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class login : ContentPage
    {
        private bool passwordVisible = false;
        MySqlConnection conectado;
        public login()
        {
            InitializeComponent();
        }

        private void Mostrar_Clicked(object sender, System.EventArgs e)
        {
            passwordVisible = !passwordVisible;
            passwor.IsPassword = !passwordVisible;

            if (passwordVisible)
            {
                ((Button)sender).ImageSource = ImageSource.FromFile("abiojo.png");
            }
            else
            {
                ((Button)sender).ImageSource = ImageSource.FromFile("cloojo.png");
            }
        }

        public async void button_clickead_2(object sender, EventArgs e)
        {
            conectar();
            string usuarioIngresado = userv.Text;
            string contraseñaIngresada = passwor.Text;

            string consultaSQL = "SELECT cliente_id FROM Clientes WHERE correo = @Usuario AND contraseña = @password";

            MySqlCommand comandoDB = new MySqlCommand(consultaSQL, conectado);
            comandoDB.CommandTimeout = 60;

            comandoDB.Parameters.AddWithValue("@Usuario", usuarioIngresado);
            comandoDB.Parameters.AddWithValue("@password", contraseñaIngresada);

            try
            {
                object result = await comandoDB.ExecuteScalarAsync();

                if (result != null)
                {
                    int clienteId = Convert.ToInt32(result);

                    await Navigation.PushAsync(new ProductosPage(clienteId));

                    userv.Text = "";
                    passwor.Text = "";

                    return;
                }
                else
                {
                    await DisplayAlert("Error", "Usuario y/o contraseña incorrecta", "Aceptar");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", "Ocurrió un error al intentar iniciar sesión: " + ex.Message, "Aceptar");
            }
        }

        private async void OnIrAOtraPaginaTapped(object sender, EventArgs e)
        {
           await Navigation.PushAsync(new registro());

        }

        private async void olvidocontra(object sender, EventArgs e)
        {
            //NavigationPage(new registro());

        }

        public async void conectar()
        {
            try
            {
                string conexion = "Server=82.197.95.106;Port=3306;Database=grafa;UserId=grafa;Password=grafa23+";
                conectado = new MySqlConnection(conexion);
                conectado.Open();
            }
            catch (Exception ex)
            {
                await DisplayAlert("Alert", "NO SE PUEDE CONECTAR AL SERVIDOR", "OK");
                //DisplayAlert.("ERROR AL CONECTARSE AL SERVIDOR" + ex);
            }
        }
    }
}