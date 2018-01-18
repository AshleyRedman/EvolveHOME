using System;
using ClassControlLib;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic; // Handles Collections of data

namespace TestControl
{
    [TestClass]
    public class tstHomeProductCollection
    {
        [TestMethod]
        public void InstanceOK()
        {
            //create an instance of clsHomeProductCollection
            clsHomeProductCollection AllHomeProducts = new clsHomeProductCollection();
            //test to see that it exists
            Assert.IsNotNull(AllHomeProducts);
        }

        [TestMethod]
        public void HomeProductListOK()
        {
            //create an instance of clsHomeProductCollection
            clsHomeProductCollection AllHomeProducts = new clsHomeProductCollection();
            //create a list of objects to assign test data
            List<clsHomeProduct> TestList = new List<clsHomeProduct>();
            //add first item to the list
            clsHomeProduct TestItem = new clsHomeProduct();
            //Set the test items properties
            TestItem.ProductID = 1;
            TestItem.Name = "Name";
            TestItem.Price = 300;
            TestItem.Type = "Type";
            TestItem.Collection = "Collection";
            TestItem.Description = "Description";
            TestItem.Dimentions = "31,31,31";
            //Add the new test item to the list
            TestList.Add(TestItem);
            //Assign the data to the property
            AllHomeProducts.HomeProductList = TestList;
            //test to see that the two values are the same
            Assert.AreEqual(AllHomeProducts.HomeProductList, TestList);
        }

        [TestMethod]
        public void ThisHomeProductPropertyOK()
        {
            //create an instance of clsHomeProductCollection
            clsHomeProductCollection AllHomeProducts = new clsHomeProductCollection();
            //create some test data to assign to the property
            clsHomeProduct TestItem = new clsHomeProduct();
            //Set the test items properties
            TestItem.ProductID = 1;
            TestItem.Name = "Name";
            TestItem.Price = 300;
            TestItem.Type = "Type";
            TestItem.Collection = "Collection";
            TestItem.Description = "Description";
            TestItem.Dimentions = "31,31,31";
            //Assign the data to the property
            AllHomeProducts.ThisHomeProduct = TestItem;
            //test to see that the two values are the same
            Assert.AreEqual(AllHomeProducts.HomeProductList, TestItem);
        }

        [TestMethod]
        public void ListAndCountOK()
        {
            //create an instance of clsHomeProductCollection
            clsHomeProductCollection AllHomeProducts = new clsHomeProductCollection();
            //create some tests data to assign to the property
            //in this case the data needs to be a list of objects
            List<clsHomeProduct> TestList = new List<clsHomeProduct>();
            //add an item to the test data
            clsHomeProduct TestItem = new clsHomeProduct();
            //set its properties
            TestItem.ProductID = 1;
            TestItem.Name = "Name";
            TestItem.Price = 300;
            TestItem.Type = "Type";
            TestItem.Collection = "Collection";
            TestItem.Description = "Description";
            TestItem.Dimentions = "31,31,31";
            //add the data to the property
            TestList.Add(TestItem);
            //assign the data to the property
            AllHomeProducts.HomeProductList = TestList;
            //test to see that the two values are the same
            Assert.AreEqual(AllHomeProducts.Count, TestList.Count);
        }

        [TestMethod]
        public void HomeProductAddMethodOK()
        {
            //create an instance of clsHomeProductCollection
            clsHomeProductCollection AllHomeProducts = new clsHomeProductCollection();
            //crate an item for the test data
            clsHomeProduct TestItem = new clsHomeProduct();
            //var to store the primary key
            Int32 PrimaryKey = 0;
            //set this properties
            TestItem.Name = "AddName";
            TestItem.Price = 900;
            TestItem.Type = "AddType";
            TestItem.Collection = "AddCollection";
            TestItem.Description = "AddDescription";
            TestItem.Dimentions = "30,30,30";
            //set this product to the tests data
            AllHomeProducts.ThisHomeProduct = TestItem;
            //add the record
            PrimaryKey = AllHomeProducts.Add();
            //set the priomary key of the tests data
            TestItem.ProductID = PrimaryKey;
            //Find the record
            AllHomeProducts.ThisHomeProduct.Find(PrimaryKey);
            //test to see that the two values are the same
            Assert.AreEqual(AllHomeProducts.ThisHomeProduct, TestItem);
        }

        [TestMethod]
        public void HomeProductDeleteMethodOK()
        {
            //create an instance of clsHomeProductCollection
            clsHomeProductCollection AllHomeProducts = new clsHomeProductCollection();
            //crate an item for the test data
            clsHomeProduct TestItem = new clsHomeProduct();
            //var to store the primary key
            Int32 PrimaryKey = 0;
            //set this properties
            TestItem.Name = "AddName";
            TestItem.Price = 900;
            TestItem.Type = "AddType";
            TestItem.Collection = "AddCollection";
            TestItem.Description = "AddDescription";
            TestItem.Dimentions = "30,30,30";
            //set this product to the tests data
            AllHomeProducts.ThisHomeProduct = TestItem;
            //add the record
            PrimaryKey = AllHomeProducts.Add();
            //set the priomary key of the tests data
            TestItem.ProductID = PrimaryKey;
            //Find the record
            AllHomeProducts.ThisHomeProduct.Find(PrimaryKey);
            //Delete The Record
            AllHomeProducts.Delete();
            //Again find the record
            Boolean Found = AllHomeProducts.ThisHomeProduct.Find(PrimaryKey);
            //Test to see that the record was removed
            Assert.IsFalse(Found);
        }

        [TestMethod]
        public void HomeProductUpdatMethodOK()
        {
            // needs looking into as data is displayed via a lopp in a html table and not a asp listbox

            //create an instance of the class we want to create
            clsHomeProductCollection AllHomeProducts = new clsHomeProductCollection();
            //create the item of test data
            clsHomeProduct TestItem = new clsHomeProduct();
            //var to store the PK
            Int32 PrimaryKey = 0;
            //set its properties
            TestItem.Name = "Name";
            TestItem.Price = 31;
            TestItem.Type = "Type";
            TestItem.Collection = "Collection";
            TestItem.Description = "Description";
            TestItem.Dimentions = "Dimentions";
            //set ThisProduct to the test data
            AllHomeProducts.ThisHomeProduct = TestItem;
            //add the record
            PrimaryKey = AllHomeProducts.Add();
            //set the primary key of the test data
            TestItem.ProductID = PrimaryKey;
            //Modify the tests data
            TestItem.Name = "2Name";
            TestItem.Price = 88;
            TestItem.Type = "2Type";
            TestItem.Collection = "2Collection";
            TestItem.Description = "2Description";
            TestItem.Dimentions = "2Dimentions";
            //set the record based on the new tests data
            AllHomeProducts.ThisHomeProduct = TestItem;
            //update the record
            AllHomeProducts.Update();
            //find the record
            AllHomeProducts.ThisHomeProduct.Find(PrimaryKey);
            //test to see this product matches the tests data
            Assert.AreEqual(AllHomeProducts.ThisHomeProduct, TestItem);

        }

        [TestMethod]
        public void HomeProductFiltberByTypeMethodOK()
        {
            // needs looking into as search function may be handled by live jquery
        }



    }
}
