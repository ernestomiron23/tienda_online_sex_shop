using Xamarin.Forms;

namespace sex_shopv2.Views
{
    public class ProductosPage : TabbedPage
    {
        private int clienteId;

        public ProductosPage(int clienteId)
        {
            this.clienteId = clienteId;

            Title = "Productos";

            var todosProductosPage = new TodosProductosPage(clienteId);
            this.Children.Add(todosProductosPage);

            var categorias = new[]
            {
                new { Nombre = "Condones", Id = 1 },
                new { Nombre = "Lencería", Id = 2 },
                new { Nombre = "Lubricantes", Id = 3 },
                new { Nombre = "Trajes", Id = 4 },
                new { Nombre = "Dildos", Id = 5 }
            };

            foreach (var categoria in categorias)
            {
                var categoriaPage = new CategoriaPage(clienteId, categoria.Id, categoria.Nombre);
                this.Children.Add(categoriaPage);
            }

            var carritoIcon = new ToolbarItem
            {
                IconImageSource = "carriton.png",
                Priority = 0,
                Order = ToolbarItemOrder.Primary,
                Command = new Command(async () =>
                {
                    await Navigation.PushAsync(new CarritoPage(clienteId));
                })
            };

            ToolbarItems.Add(carritoIcon);
        }
    }
}
