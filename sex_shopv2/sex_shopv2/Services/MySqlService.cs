using System;
using System.Collections.Generic;
using System.Text;
using MySqlConnector;

namespace sex_shopv2.Services
{
    internal class MySqlService
    {
        private string connectionString = "Server=82.197.95.106;Port=3306;Database=grafa;User Id=grafa;Password=grafa23+;Pooling=false;";

        public MySqlConnection GetConnection()
        {
            return new MySqlConnection(connectionString);
        }

        public void TestConnection()
        {
            using (var conn = new MySqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    Console.WriteLine("Conexión exitosa");
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Error: {ex.Message}");
                }
            }
        }
    }
}
