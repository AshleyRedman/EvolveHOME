using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using ClassControlLib;
using System.Web;

namespace ClassControlLib
{
    public class clsHomeCart
    {
        public List<clsHomeShoppingCartItem> Items { get; private set; }
        public static readonly clsHomeCart Instance;


        static clsHomeCart()
        {
            if (HttpContext.Current.Session["Basket"] == null)
            {
                Instance = new clsHomeCart();
                Instance.Items = new List<clsHomeShoppingCartItem>();
                HttpContext.Current.Session["Basket"] = Instance;
            }
            else
            {
                Instance = (clsHomeCart)HttpContext.Current.Session["Basket"];
            }
        }

        protected clsHomeCart() { }

        // Add item to cart

        public void AddItem(int ProductID)
        {
            clsHomeShoppingCartItem newItem = new clsHomeShoppingCartItem(ProductID);

            if (Items.Contains(newItem))
            {
                foreach (clsHomeShoppingCartItem item in Items)
                {
                    if (Items.Equals(newItem))
                    {
                        item.quantity++;
                        return;
                    }
                }
            }
            else
            {
                newItem.quantity = 1;
                Items.Add(newItem);
            }
        }

        //Set item quantitiy

        public void SetitemQuantity(int ProductID, int quantity)
        {
            if (quantity == 0)
            {
                RemoveItem(ProductID);
                return;
            }

            clsHomeShoppingCartItem updatedItem = new clsHomeShoppingCartItem(ProductID);
            
            foreach (clsHomeShoppingCartItem item in Items)
            {
                if (item.Equals(updatedItem))
                {
                    item.quantity = quantity;
                    return;
                }
            }
            
        }

        //Remove item

        public void RemoveItem(int ProductID)
        {
            clsHomeShoppingCartItem removeItem = new clsHomeShoppingCartItem(ProductID);
            Items.Remove(removeItem);
        }

        //GetSubTotal
        public decimal GetSubTotal()
        {
            decimal subTotal = 0;
            foreach (clsHomeShoppingCartItem item in Items)
            {
                subTotal += item.TotalPrice;
            }
            return subTotal;
        }



    }
}
