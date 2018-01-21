<%@ Page Title="Home" Language="C#" MasterPageFile="~/StylePage.master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EvolveConnectionString"].ConnectionString);
        {
            //create so,e vars to hold the sql query
            string feature1 = "select Description from tblHomeProducts where ProductID = 20";
            string feature2 = "select Description from tblHomeProducts where ProductID = 22";
            string feature3 = "select Description from tblHomeProducts where ProductID = 26";
            //prop the sql command to gain result
            SqlCommand showFeature1 = new SqlCommand(feature1, con);
            SqlCommand showFeature2 = new SqlCommand(feature2, con);
            SqlCommand showFeature3 = new SqlCommand(feature3, con);
            //open db connection
            con.Open();
            //set the label text property to the result of the query in string format
            lblFeature1.Text = showFeature1.ExecuteScalar().ToString();
            lblFeature2.Text = showFeature2.ExecuteScalar().ToString();
            lblFeature3.Text = showFeature3.ExecuteScalar().ToString();
            // close the db connection
            con.Close();
        }

    }

    protected void btnViewFeature1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Products/StandardSofa.aspx");
    }
    protected void btnViewFeature2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Products/BiggerSofa.aspx");
    }
    protected void btnViewFeature3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Products/GreyLegSupport.aspx");
    }



</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <section id="hero">
        <div>
            <h1>Welcome to eVolve Home</h1>
            <h4>The great alternative to Ikea?
            </h4>
        </div>
    </section>
    <h2 id="feature-title">Featured Items</h2>
    <section id="featured-items">
        <article class="featured">
            <img src="media/img/product/1sofa.jpg" alt="Alternate Text" />
            <p><asp:Label Text="" runat="server" ID="lblFeature1" /></p>
            <asp:Button Text="View" runat="server" ID="btnViewFeature1" OnClick="btnViewFeature1_Click" class="Buttons" />
        </article>
        <article class="featured">
            <img src="media/img/product/2sofa.jpg" alt="Alternate Text" />
            <p><asp:Label Text="" runat="server" ID="lblFeature2" /></p>
            <asp:Button Text="View" runat="server" ID="btnViewFeature2" OnClick="btnViewFeature2_Click" class="Buttons" />
        </article>
        <article class="featured">
            <img src="media/img/product/4sofa.jpg" alt="Alternate Text" />
            <p><asp:Label Text="" runat="server" ID="lblFeature3" /></p>
            <asp:Button Text="View" runat="server" ID="btnViewFeature3" OnClick="btnViewFeature3_Click" class="Buttons" />
        </article>
    </section>
    <section id="offers">
        <article class="offer-box">
            <img src="media/img/icons/gift.svg" alt="gift" />
            <h3>Gift options available</h3>
        </article>
        <article class="offer-box">
            <img src="media/img/icons/delivery.svg" alt="delivery" />
            <h3>Free and Fast delivery!</h3>    
        </article>
        <article class="offer-box">
            <img src="media/img/icons/candle.svg" alt="candle" />
            <h3>Hundrens of products</h3>
        </article>
        <article class="offer-box">
            <img src="media/img/icons/many.svg" alt="Many People" />
            <h3>Options for everyone</h3>
        </article>
    </section>

</asp:Content>

