<%@ Page Title="" Language="C#" MasterPageFile="~/Products/ProductDetail.Master" AutoEventWireup="true" CodeBehind="GreyLegSupport.aspx.cs" Inherits="FrontEnd.Products.GreyLegSupport" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EvolveConnectionString"].ConnectionString);

        {
            if (Session["user"] != null) {



                string Username = Session["user"].ToString();
                //string FindAccountID = "select AccountID from tblAccount where Username='"+ Username + "'";
                //create vars to hold the sql query
                //string ProductId = "select ProductID from tblHomeProducts where ProductID = 26";
                string Name = "select Name from tblHomeProducts where ProductID = 26";
                string Price = "select Price from tblHomeProducts where ProductID = 26";
                string Type = "select Type from tblHomeProducts where ProductID = 26";
                string Collection = "select Collection from tblHomeProducts where ProductID = 26";
                string Description = "select Description from tblHomeProducts where ProductID = 26";
                string Dimentions = "select Dimentions from tblHomeProducts where ProductID = 26";
                string Image = "select ImagePath from tblHomeProducts where ProductID = 26";

                // use the query with the connection to gain result
                SqlCommand showName = new SqlCommand(Name, con);
                SqlCommand showPrice = new SqlCommand(Price, con);
                SqlCommand showType = new SqlCommand(Type, con);
                SqlCommand showCollection = new SqlCommand(Collection, con);
                SqlCommand showDescription = new SqlCommand(Description, con);
                SqlCommand showDimentions = new SqlCommand(Dimentions, con);
                SqlCommand showImage = new SqlCommand(Image, con);
                //SqlCommand showID = new SqlCommand(FindAccountID, con);

                //open the sql connection
                con.Open();
                //set the label txt property to the result of the query in string format
                lblName.Text = showName.ExecuteScalar().ToString();
                lblPrice.Text = showPrice.ExecuteScalar().ToString();
                lblType.Text = showType.ExecuteScalar().ToString();
                lblCollection.Text = showCollection.ExecuteScalar().ToString();
                lblDescription.Text = showDescription.ExecuteScalar().ToString();
                lblDimentions.Text = showDimentions.ExecuteScalar().ToString();
                imgImage.ImageUrl = showImage.ExecuteScalar().ToString();
                //lblID.Text = showID.ExecuteScalar().ToString();
                //close db connection
                con.Close();

            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }



        }

    }


</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <section>
        <h2><asp:Label Text="Product Namer here" runat="server" ID="lblName" /></h2>
    </section>
    <section id="ProductPreview">
        <figure>
            <asp:Image ID="imgImage" runat="server" />
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
            
            <div class=".Button"><a class="add-to-cart" href="#" data-name="Leg Stool" data-price="60">Add To Basket</a></div>
            <p id="lblMessage"></p>
            <script src="../js/shoppingCart.js"></script>
            <script>
                $(".add-to-cart").click(function (event) {
                    event.preventDefault();
                    var name = $(this).attr("data-name");
                    var price = Number($(this).attr("data-price"));
                    shoppingCart.addItemToCart(name, price, 1);
                    alert( name + " added to cart");
                    displayCart();
                    
                });
            </script>

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

