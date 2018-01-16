using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using ClassControlLib;

namespace TestControl
{
    [TestClass]
    public class tstProduct
    {
        [TestMethod]
        public void HomeProductInstanceOK()
        {
            //create an instance of clsHomeProduct
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            //Check to see if it exists
            Assert.IsNotNull(AHomeProduct);
        }

        [TestMethod]
        public void HomeProductIDOK()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Int32 TestData = 1;
            AHomeProduct.ProductID = TestData;
            Assert.AreEqual(AHomeProduct.ProductID, TestData);
        }

        [TestMethod]
        public void HomeProductNameOK()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();

            string TestData = "Name";

            AHomeProduct.Name = TestData;

            Assert.AreEqual(AHomeProduct.Name, TestData);
        }

        [TestMethod]
        public void HomeProductPriceOK()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();

            Int32 TestData = 21;

            AHomeProduct.Price = TestData;

            Assert.AreEqual(AHomeProduct.Price, TestData);
        }

        [TestMethod]
        public void HomeProductTypeOK()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();

            string TestData = "Type";

            AHomeProduct.Type = TestData;

            Assert.AreEqual(AHomeProduct.Type, TestData);
        }

        [TestMethod]
        public void HomeProductCollectionOK()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();

            string TestData = "Collection";

            AHomeProduct.Collection = TestData;

            Assert.AreEqual(AHomeProduct.Collection, TestData);
        }

        [TestMethod]
        public void HomeProductDescriptionOK()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();

            string TestData = "Desc";

            AHomeProduct.Description = TestData;

            Assert.AreEqual(AHomeProduct.Description, TestData);
        }

        [TestMethod]
        public void HomeProductDimentionsOK()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();

            string TestData = "31,31,31";

            AHomeProduct.Dimentions = TestData;

            Assert.AreEqual(AHomeProduct.Dimentions, TestData);
        }

        [TestMethod]
        public void HomeProductValidMethodOK()
        {
            //crate an instance of clsHomeProduct
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            //boolean var to store the result of the validation
            Boolean OK = false;
            //create some test data to pass to the methid
            string Name = "Name";
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = "Desc";
            string Dimentions = "31,31,31";
            //invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test to see that the result is correct
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void HomeProductFindMethodOK()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();

            Boolean Found = false;

            Int32 ProductID = 1;

            Found = AHomeProduct.Find(ProductID);

            Assert.IsTrue(Found);
        }

        [TestMethod]
        public void HomeProductIDNotFound()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            //bool to store the result of the search
            Boolean Found = false;
            //bool to store the result if data is ok
            Boolean OK = true;
            Int32 ProductID = 1;
            //invoke the methid
            Found = AHomeProduct.Find(ProductID);
            //check the ID 
            if (AHomeProduct.ProductID != 1)
            {
                OK = false;
            }
            //test to see if the results are correct
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void HomeProductNameNotFound()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean Found = false;
            Boolean OK = true;
            Int32 ProductID = 1;
            Found = AHomeProduct.Find(ProductID);
            if (AHomeProduct.Name != "tName")
            {
                OK = false;
            }
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void HomeProductPriceNotFound()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean Found = false;
            Boolean OK = true;
            Int32 ProductID = 1;
            Found = AHomeProduct.Find(ProductID);
            if (AHomeProduct.Price != 100)
            {
                OK = false;
            }
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void HomeProductTypeNotFound()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean Found = false;
            Boolean OK = true;
            Int32 ProductID = 1;
            Found = AHomeProduct.Find(ProductID);
            if (AHomeProduct.Type != "Type")
            {
                OK = false;
            }
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void HomeProductCollectionNotFound()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean Found = false;
            Boolean OK = true;
            Int32 ProductID = 1;
            Found = AHomeProduct.Find(ProductID);
            if (AHomeProduct.Collection != "Collection")
            {
                OK = false;
            }
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void HomeProductDescriptionNotFound()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean Found = false;
            Boolean OK = true;
            Int32 ProductID = 1;
            Found = AHomeProduct.Find(ProductID);
            if (AHomeProduct.Description != "Description")
            {
                OK = false;
            }
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void HomeProductDimentionsNotFound()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean Found = false;
            Boolean OK = true;
            Int32 ProductID = 1;
            Found = AHomeProduct.Find(ProductID);
            if (AHomeProduct.Dimentions != "31,31,31")
            {
                OK = false;
            }
            Assert.IsTrue(OK);
        }



        // Testing Data Input Data types and entry lengths 

        [TestMethod]
        public void ProductNameMinLessOne()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = ""; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsFalse(OK);
        }

        [TestMethod]
        public void ProductNameMin()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "A"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductNameMinPlusOne()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "AA"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductNameMaxLessOne()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "AAAAAAAAA"; // must contain 1 char (9 char)
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductNameMax()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "AAAAAAAAAA"; // must contain 1 char (10 char)
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsFalse(OK);
        }

        [TestMethod]
        public void ProductNameMaxPlusOne()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "AAAAAAAAAAA"; // must contain 1 char (11 char)
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsFalse(OK);
        }

        [TestMethod]
        public void ProductNameMid()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "AAAAA"; // must contain 1 char (5 char)
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductNameExtremeMax()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = ""; // must contain 1 char (500 char)
            Name = Name.PadRight(500, 'A'); // fill var with 500 'A'
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsFalse(OK);
        }

        // Price Var testing - add later - var.length => X

        /*
        [TestMethod]
        public void ProductPriceMin()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name";
            Int32 Price = 0; // no chars
            string Type = "ExampleType";
            string Collection = "ExampleCollection";
            string Description = "ExampleDescription";
            string Dimentions = "ExampleDimentions";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductPriceMinLessOne()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; 
            Int32 Price = -1; // no chars
            string Type = "ExampleType";
            string Collection = "ExampleCollection";
            string Description = "ExampleDescription";
            string Dimentions = "ExampleDimentions";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsFalse(OK);
        }

        //

        [TestMethod]
        public void ProductPriceMinPlusOne()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name";
            Int32 Price = 1; // no chars
            string Type = "ExampleType";
            string Collection = "ExampleCollection";
            string Description = "ExampleDescription";
            string Dimentions = "ExampleDimentions";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }
        

        [TestMethod]
        public void ProductPriceMid()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name";
            Int32 Price = 500; // no chars
            string Type = "ExampleType";
            string Collection = "ExampleCollection";
            string Description = "ExampleDescription";
            string Dimentions = "ExampleDimentions";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }
        */

        // Testing for Product Type

        [TestMethod]
        public void ProductTypeMin()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "T";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductTypeMinLessOne()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsFalse(OK);
        }

        [TestMethod]
        public void ProductTypeMinPlusOne()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "AA";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductTypeMid()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "AAAAA";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductTypeMax()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "AAAAAAAAAA";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductTypeMaxPlusOne()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "AAAAAAAAAAA";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsFalse(OK);
        }

        [TestMethod]
        public void ProductTypeMaxLessOne()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "AAAAAAAAA";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductTypeExtremeMax()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "";
            Type = Type.PadRight(500, 'A');
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsFalse(OK);
        }

        // Testing for collection data input
        [TestMethod]
        public void ProductCollectionMin()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = ""; // No chars as allows Nulls
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductCollectionMinPlusOne()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "";
            Collection = Collection.PadRight(1, 'A');
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductCollectionMid()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "";
            Collection = Collection.PadRight(10, 'A');
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductCollectionMax()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "";
            Collection = Collection.PadRight(20, 'A');
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductCollectionMaxPlusOne()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "";
            Collection = Collection.PadRight(21, 'A');
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsFalse(OK);
        }

        [TestMethod]
        public void ProductCollectionExtremeMax()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "";
            Collection = Collection.PadRight(500, 'A');
            string Description = "Description";
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsFalse(OK);
        }

        // Testing for product description - 50 chars max allows null

        [TestMethod]
        public void ProductDescriptionMin()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = ""; // allows null
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductDescriptionMinPlusOne()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = ""; // allows null
            Description = Description.PadRight(1, 'A');
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductDescriptionMid()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = ""; // allows null
            Description = Description.PadRight(25, 'A');
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductDescriptionMax()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = ""; // allows null
            Description = Description.PadRight(50, 'A');
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductDescriptionMaxPlusOnee()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = ""; // allows null
            Description = Description.PadRight(51, 'A');
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsFalse(OK);
        }

        [TestMethod]
        public void ProductDescriptionExtremeMax()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = ""; // allows null
            Description = Description.PadRight(500, 'A');
            string Dimentions = "31,31,31";
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsFalse(OK);
        }

        // Testing for dimentions input, 15 char max - allows null

        [TestMethod]
        public void ProductDimentionsMin()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = ""; //allows null
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductDimentionsMinPlusOne()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = ""; //allows null
            Dimentions = Dimentions.PadRight(1, 'A');
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductDimentionsMid()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = ""; //allows null
            Dimentions = Dimentions.PadRight(7, 'A');
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductDimentionsMax()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = ""; //allows null
            Dimentions = Dimentions.PadRight(15, 'A');
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsTrue(OK);
        }

        [TestMethod]
        public void ProductDimentionsMaxPlusOne()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = ""; //allows null
            Dimentions = Dimentions.PadRight(16, 'A');
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsFalse(OK);
        }

        [TestMethod]
        public void ProductDimentionsExtremeMax()
        {
            clsHomeProduct AHomeProduct = new clsHomeProduct();
            Boolean OK = false;
            //Test Data for the method
            string Name = "Name"; // must contain 1 char
            Int32 Price = 21;
            string Type = "Type";
            string Collection = "Collection";
            string Description = "Description";
            string Dimentions = ""; //allows null
            Dimentions = Dimentions.PadRight(500, 'A');
            // invoke the method
            OK = AHomeProduct.Valid(Name, Price, Type, Collection, Description, Dimentions);
            //test for result 
            Assert.IsFalse(OK);
        }

    }
}
