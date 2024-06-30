using System;
using Xamarin.Forms;

namespace sex_shopv2.Views
{
    public class FabMenu : ContentView
    {
        private StackLayout menuLayout;
        private bool isMenuVisible;

        public event EventHandler<string> ItemSelected;

        public FabMenu()
        {
            var fabButton = new Button
            {
                BackgroundColor = Color.FromHex("#A524E2"),
                WidthRequest = 56,
                HeightRequest = 56,
                CornerRadius = 28,
                VerticalOptions = LayoutOptions.End,
                HorizontalOptions = LayoutOptions.End,
                Margin = new Thickness(16),
                TranslationX = -28,
                TranslationY = -28,
                ImageSource = ImageSource.FromFile("carrito.png")
            };

            fabButton.Clicked += OnFabButtonClicked;

            menuLayout = new StackLayout
            {
                BackgroundColor = Color.White,
                Orientation = StackOrientation.Vertical,
                Padding = new Thickness(10),
                Spacing = 10,
                IsVisible = false,
                VerticalOptions = LayoutOptions.End,
                HorizontalOptions = LayoutOptions.End
            };

            var absoluteLayout = new AbsoluteLayout();
            absoluteLayout.Children.Add(fabButton);

            AbsoluteLayout.SetLayoutFlags(menuLayout, AbsoluteLayoutFlags.PositionProportional);
            AbsoluteLayout.SetLayoutBounds(menuLayout, new Rectangle(1, 1, AbsoluteLayout.AutoSize, AbsoluteLayout.AutoSize));
            absoluteLayout.Children.Add(menuLayout);

            Content = absoluteLayout;
        }

        private void OnFabButtonClicked(object sender, EventArgs e)
        {
            isMenuVisible = !isMenuVisible;
            menuLayout.IsVisible = isMenuVisible;

            if (isMenuVisible)
            {
                var carritoButton = new Button { Text = "Carrito" };
                carritoButton.Clicked += (s, args) => ItemSelected?.Invoke(this, "Carrito");

                menuLayout.Children.Add(carritoButton);
            }
            else
            {
                menuLayout.Children.Clear();
            }
        }
    }
}
