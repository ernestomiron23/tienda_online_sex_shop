using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Google.Protobuf.Collections;
using MySqlConnector;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using static Xamarin.Essentials.Permissions;
using static Xamarin.Forms.Internals.Profile;

namespace sex_shopv2
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class registro : ContentPage
	{
        MySqlConnection conectado;
        public registro ()
		{
			InitializeComponent ();
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



        private async void Button_Clicked_1(object sender, EventArgs e)
        {
           

            try
            {
                conectar();

                string nombre = name.Text;
                string apellido1 = apellido.Text;
                string correo1 = correo.Text;
                string contrasena = passwor.Text;
                string telefonoText = phone1.Text;
                string direccion = addresse.Text;
                string ciudad = city.Text;
                string estado = edo.Text;
                string codigoPostalText = cpostal.Text;
                string pais1 = pais.Text;

                // Validar las entradas
                if (string.IsNullOrWhiteSpace(nombre) ||
                    string.IsNullOrWhiteSpace(apellido1) ||
                    string.IsNullOrWhiteSpace(correo1) ||
                    string.IsNullOrWhiteSpace(contrasena) ||
                    string.IsNullOrWhiteSpace(telefonoText) ||
                    string.IsNullOrWhiteSpace(direccion) ||
                    string.IsNullOrWhiteSpace(ciudad) ||
                    string.IsNullOrWhiteSpace(estado) ||
                    string.IsNullOrWhiteSpace(codigoPostalText) ||
                    string.IsNullOrWhiteSpace(pais1))
                {
                    await DisplayAlert("Error", "Todos los campos son obligatorios.", "Aceptar");
                    return;
                }

                // No es necesario convertir telefono y codigo_postal si son VARCHAR en la base de datos
                string consulta = "INSERT INTO Clientes (nombre, apellido, correo, contraseña, teléfono, dirección, ciudad, estado, código_postal, país) VALUES (@nombre, @apellido, @correo, @contrasena, @telefono, @direccion, @ciudad, @estado, @codigo_postal, @pais);";

                using (MySqlCommand comando = new MySqlCommand(consulta, conectado))
                {
                    comando.Parameters.AddWithValue("@nombre", nombre);
                    comando.Parameters.AddWithValue("@apellido", apellido1);
                    comando.Parameters.AddWithValue("@correo", correo1);
                    comando.Parameters.AddWithValue("@contrasena", contrasena);
                    comando.Parameters.AddWithValue("@telefono", telefonoText);
                    comando.Parameters.AddWithValue("@direccion", direccion);
                    comando.Parameters.AddWithValue("@ciudad", ciudad);
                    comando.Parameters.AddWithValue("@estado", estado);
                    comando.Parameters.AddWithValue("@codigo_postal", codigoPostalText);
                    comando.Parameters.AddWithValue("@pais", pais1);

                    await comando.ExecuteNonQueryAsync();
                    await DisplayAlert("Éxito", "El usuario se ha registrado correctamente.", "Aceptar");
                    name.Text = string.Empty;
                    apellido.Text = string.Empty;
                    correo.Text = string.Empty;
                    passwor.Text = string.Empty;
                    phone1.Text = string.Empty;
                    addresse.Text = string.Empty;
                    city.Text = string.Empty;
                    edo.Text = string.Empty;
                    cpostal.Text = string.Empty;
                    pais.Text = string.Empty;

                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error Detallado", "Ha ocurrido un error al intentar registrar al usuario: " + ex.ToString(), "Aceptar");
            }
        }

    }
}