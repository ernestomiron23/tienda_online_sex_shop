using System;
using System.Collections.Generic;
using System.Text;
using sex_shopv2.Models;
using MySqlConnector;

namespace sex_shopv2.Services
{
    internal class ProductoService
    {
        private MySqlService mySqlService;

        public ProductoService()
        {
            mySqlService = new MySqlService();

        }

        public List<Producto> GetAllProductos()
        {
            List<Producto> productos = new List<Producto>();

            using (var conn = mySqlService.GetConnection())
            {
                conn.Open();
                using (var cmd = new MySqlCommand("SELECT * FROM Productos", conn))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            productos.Add(new Producto
                            {
                                Id = reader.GetInt32("producto_id"),
                                Nombre = reader.GetString("nombre"),
                                Descripcion = reader.GetString("descripción"),
                                Precio = reader.GetDecimal("precio"),
                                Imagen = (byte[])reader["imagen"] 
                            });
                        }
                    }
                }
            }

            return productos;
        }

        public List<Producto> GetProductosByCategoria(int categoriaId)
        {
            List<Producto> productos = new List<Producto>();

            using (var conn = mySqlService.GetConnection())
            {
                conn.Open();
                using (var cmd = new MySqlCommand("SELECT * FROM Productos WHERE categoría_id = @categoriaId", conn))
                {
                    cmd.Parameters.AddWithValue("@categoriaId", categoriaId);
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            productos.Add(new Producto
                            {
                                Id = reader.GetInt32("producto_id"),
                                Nombre = reader.GetString("nombre"),
                                Descripcion = reader.GetString("descripción"),
                                Precio = reader.GetDecimal("precio"),
                                Imagen = (byte[])reader["imagen"]
                            });
                        }
                    }
                }
            }

            return productos;
        }

    }
}
