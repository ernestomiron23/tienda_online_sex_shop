using System;
using System.Collections.Generic;
using System.Text;
using sex_shopv2.Models;

namespace sex_shopv2.Models
{
    public class CarritoItem
    {
        public Producto Producto { get; set; }
        public int Cantidad { get; set; }
    }
}