using System;
using System.Collections.Generic;
using System.IO;
using MySqlConnector;
using PdfSharpCore.Drawing;
using PdfSharpCore.Fonts;
using PdfSharpCore.Pdf;
using sex_shopv2.Models;
using ZXing.Common;
using ZXing;

namespace sex_shopv2.Services
{
    internal class CarritoService
    {
        private MySqlService mySqlService;
        private MySqlConnection connection;

        public CarritoService(MySqlService mySqlService)
        {
            this.mySqlService = mySqlService;
        }

        public CarritoService(MySqlConnection connection)
        {
            this.connection = connection;
        }

        public void AgregarAlCarrito(Producto producto, int cantidad, int clienteId)
        {
            using (var conn = mySqlService.GetConnection())
            {
                conn.Open();

                using (var cmd = new MySqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandText = "INSERT INTO Carrito (cliente_id, producto_id, cantidad, precio_unitario) " +
                                      "VALUES (@clienteId, @productoId, @cantidad, @precioUnitario)";

                    cmd.Parameters.AddWithValue("@clienteId", clienteId);
                    cmd.Parameters.AddWithValue("@productoId", producto.Id);
                    cmd.Parameters.AddWithValue("@cantidad", cantidad);
                    cmd.Parameters.AddWithValue("@precioUnitario", producto.Precio);

                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void ActualizarCantidad(int productoId, int clienteId, int nuevaCantidad)
        {
            using (var conn = mySqlService.GetConnection())
            {
                conn.Open();

                using (var cmd = new MySqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandText = "UPDATE Carrito SET cantidad = @nuevaCantidad WHERE cliente_id = @clienteId AND producto_id = @productoId";

                    cmd.Parameters.AddWithValue("@nuevaCantidad", nuevaCantidad);
                    cmd.Parameters.AddWithValue("@clienteId", clienteId);
                    cmd.Parameters.AddWithValue("@productoId", productoId);

                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void EliminarDelCarrito(int productoId, int clienteId)
        {
            using (var conn = mySqlService.GetConnection())
            {
                conn.Open();

                using (var cmd = new MySqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandText = "DELETE FROM Carrito WHERE cliente_id = @clienteId AND producto_id = @productoId";

                    cmd.Parameters.AddWithValue("@clienteId", clienteId);
                    cmd.Parameters.AddWithValue("@productoId", productoId);

                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}

