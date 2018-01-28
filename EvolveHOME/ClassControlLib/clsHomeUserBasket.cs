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
    public class clsHomeUserBasket
    {
        List<clsHomeBasketItem> nHomeBasketList = new List<clsHomeBasketItem>();

        clsHomeBasketItem mThisHomeItem = new clsHomeBasketItem();

        public clsHomeUserBasket()
        {
            Int32 Index = 0;
            Int32 RecordCount = 0;
            clsDataConnection DB = new clsDataConnection();
            DB.Execute("sproc_tblHomeUserBasket_SelectAll");
            RecordCount = DB.Count;

            while (Index < RecordCount)
            {
                clsHomeBasketItem AItem = new clsHomeBasketItem();

                AItem.UBID = Convert.ToInt32(DB.DataTable.Rows[Index]["UBID"]);
                AItem.AccountID = Convert.ToInt32(DB.DataTable.Rows[Index]["AccountID"]);
                AItem.Name = Convert.ToString(DB.DataTable.Rows[Index]["Name"]);
                AItem.Price = Convert.ToInt32(DB.DataTable.Rows[Index]["Price"]);

                mHomeBasketList.Add(AItem);

                Index++;
            }
        }

        List<clsHomeBasketItem> mHomeBasketList = new List<clsHomeBasketItem>();
        public List<clsHomeBasketItem> HomeBasketList
        {
            get { return mHomeBasketList;  } set { mHomeBasketList = value; }
        }

        public clsHomeBasketItem ThisHomeItem
        {
            get { return mThisHomeItem; }
            set { mThisHomeItem = value; }
        }

        public int Count { get { return mHomeBasketList.Count; } set { } }

        public int Add()
        {
            clsDataConnection DB = new clsDataConnection();
            DB.AddParameter("@AccountID", mThisHomeItem.AccountID);
            DB.AddParameter("@Name", mThisHomeItem.Name);
            DB.AddParameter("@Price", mThisHomeItem.Price);
            

            return DB.Execute("sproc_tblHomeUserBasket_Insert");
        }

        public void Delete()
        {
            clsDataConnection DB = new clsDataConnection();
            
            DB.AddParameter("UBID", mThisHomeItem.UBID);
            DB.Execute("sproc_tblHomeUserBasket_Delete");
        }


    }
}
