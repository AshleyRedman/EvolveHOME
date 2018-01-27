using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace ClassControlLib
{
    public class clsHomeShoppingCart : IEquatable<clsHomeShoppingCart>
    {
        clsHomeProduct ThisProduct = new clsHomeProduct();
        public int quantity { get; set; }



        private int _ProductID;
        public int ProductID
        {
            get { return ThisProduct.ProductID; }
            set { _ProductID = value; }
        }


        public string Name
        {
            get
            { return ThisProduct.Name; }
 
        }

        public int Price
        {
            get
            { return ThisProduct.Price; }
        }

        public string Type
        {
            get { return ThisProduct.Type; }
        }

        public string Collection
        {
            get { return ThisProduct.Collection; }
        }

        public string Description
        {
            get { return ThisProduct.Description; }
        }

        public string Dimentions
        {
            get { return ThisProduct.Dimentions; }
        }

        public int TotalPrice
        {
            get { return Price * quantity; }
        }

        public clsHomeShoppingCart(int ProductID)
        {

        }







    }
}
