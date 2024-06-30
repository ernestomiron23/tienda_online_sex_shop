using System;
using System.Collections.Generic;
using System.Text;

namespace sex_shopv2.Models
{
    public class Producto
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public decimal Precio { get; set; }
        public byte[] Imagen { get; set; }
        public int CategoriaId { get; internal set; }
    }
}
