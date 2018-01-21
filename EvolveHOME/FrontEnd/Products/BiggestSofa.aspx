<%@ Page Title="" Language="C#" MasterPageFile="~/Products/ProductDetail.Master" AutoEventWireup="true" CodeBehind="BiggestSofa.aspx.cs" Inherits="FrontEnd.Products.BiggestSofa" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EvolveConnectionString"].ConnectionString);

        {
            //create vars to hold the sql query
            string Name = "select Name from tblHomeProducts where ProductID = 23";
            string Price = "select Price from tblHomeProducts where ProductID = 23";
            string Type = "select Type from tblHomeProducts where ProductID = 23";
            string Collection = "select Collection from tblHomeProducts where ProductID = 23";
            string Description = "select Description from tblHomeProducts where ProductID = 23";
            string Dimentions = "select Dimentions from tblHomeProducts where ProductID = 23";

            // use the query with the connection to gain result
            SqlCommand showName = new SqlCommand(Name, con);
            SqlCommand showPrice = new SqlCommand(Price, con);
            SqlCommand showType = new SqlCommand(Type, con);
            SqlCommand showCollection = new SqlCommand(Collection, con);
            SqlCommand showDescription = new SqlCommand(Description, con);
            SqlCommand showDimentions = new SqlCommand(Dimentions, con);

            //open the sql connection
            con.Open();
            //set the label txt property to the result of the query in string format
            lblName.Text = showName.ExecuteScalar().ToString();
            lblPrice.Text = showPrice.ExecuteScalar().ToString();
            lblType.Text = showType.ExecuteScalar().ToString();
            lblCollection.Text = showCollection.ExecuteScalar().ToString();
            lblDescription.Text = showDescription.ExecuteScalar().ToString();
            lblDimentions.Text = showDimentions.ExecuteScalar().ToString();
            //close db connection
            con.Close();
            
        }

    }

    protected void btnAddToBasket_Click(object sender, EventArgs e)
    {
        /*
         * if logged in, add to basket and go to basket, if not logged in, redirect to login page
         * 
         * 
         */
        Response.Redirect("../LoggedIn/Basket.aspx");
    }




</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <section>
        <h2><asp:Label Text="Product Namer here" runat="server" ID="lblName" /></h2>
    </section>
    <section id="ProductPreview">
        <figure>
            <img src="../media/img/product/3sofa.jpg" alt="sofa1" />
            <figcaption>

            </figcaption>
        </figure>
        <section class="ProductMini">
            <article>
                <img src="../media/img/product/1sofa.jpg" alt="sofa1" />
            </article>
            <article>
                <img src="../media/img/product/AllProducts/1sofa4.jpg" alt="sofa1" />
            </article>
            <article>
                <img src="../media/img/product/AllProducts/1sofa3.jpg" alt="sofa1" />
            </article>
            <article>
                <img src="../media/img/product/AllProducts/1sofa2.jpg" alt="sofa1" />
            </article>
        </section>
    </section>
    <aside id="ProductDetail">
        <div class="ProductSpec">
            <h4>Description</h4>
            <asp:Label Text="desc here" runat="server" ID="lblDescription" />
            <h4>Dimentions</h4>
            <asp:Label Text="dimentions here" runat="server" ID="lblDimentions" />
            <h4>Type</h4>
            <asp:Label Text="type here" runat="server" ID="lblType" />
            <h4>Collection</h4>
            <asp:Label Text="collection herer" runat="server" ID="lblCollection" />
        </div>
        <div class="ProductPurchase">
            <h4>Price: <asp:Label Text="price here" runat="server" ID="lblPrice" /></h4>
            <asp:Button Text="Add To Basket" runat="server" ID="btnAddToBasket" OnClick="btnAddToBasket_Click" class="Buttons" />
        </div>
    </aside>
    <section class="SimilarProducts">
        <h5>Similar Products</h5>
        <div>
            <article>
                <img src="../media/img/product/1sofa.jpg" alt="sofa1" />
            </article>
            <article>
                <img src="../media/img/product/2sofa.jpg" alt="sofa1" />
            </article>
            <article>
                <img src="../media/img/product/3sofa.jpg" alt="sofa1" />
            </article>
            <article>
                <img src="../media/img/product/4sofa.jpg" alt="sofa1" />
            </article>
            <article>
                <img src="../media/img/product/sofa5.jpg" alt="sofa1" />
            </article>
            <article>
                <img src="../media/img/product/sofa6.jpg" alt="sofa1" />
            </article>
        </div>
    </section>

</asp:Content>

