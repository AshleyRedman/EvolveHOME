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
    public class clsHomeBasketItem
    {

        private Int32 mUBID;
        private Int32 mAccountID;
        private string mName;
        private Int32 mPrice;




        public Int32 UBID { get { return mUBID; } set { mUBID = value; } }
        public Int32 AccountID { get { return mAccountID; } set { mAccountID = value; } }
        public string Name { get { return mName; } set { mName = value; } }
        public Int32 Price { get { return mPrice; } set { mPrice = value; } }

        public bool Valid(string name, Int32 price)
        {
            Boolean Ok = true;
            if(name.Length == 0)
            {
                Ok = false;
            }
            if (name.Length > 1000)
            {
                Ok = false;
            }
            if (price > 50000)
            {
                Ok = false;
            }
            return Ok;
        }

        public bool Find(Int32 ubid)
        {
            clsDataConnection DB = new clsDataConnection();
            DB.AddParameter("@UBID", UBID);
            DB.Execute("sproc_tblHomeUserBasket_FilterByUBID");
            if (DB.Count == 1)
            {
                mUBID = Convert.ToInt32(DB.DataTable.Rows[0]["UBID"]);
                mAccountID = Convert.ToInt32(DB.DataTable.Rows[0]["AccountID"]);
                mName = Convert.ToString(DB.DataTable.Rows[0]["Name"]);
                mPrice = Convert.ToInt32(DB.DataTable.Rows[0]["Price"]);

                return true;
            }
            else
            {
                return false;
            }
        }

    }
}
