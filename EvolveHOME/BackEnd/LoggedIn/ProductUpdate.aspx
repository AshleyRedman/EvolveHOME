<%@ Page Title="Product Update" Language="C#" MasterPageFile="~/LoggedIn/BackEndStyle.master" AutoEventWireup="true" CodeBehind="ProductUpdate.aspx.cs" Inherits="BackEnd.LoggedIn.ProductUpdate" %>
<%@ Import Namespace="ClassControlLib" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">


    protected void btnFind_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EvolveConnectionString"].ConnectionString);
        {

            string ID = txtFindProductID.Text;

            string findID = "select ProductID from tblHomeProducts where ProductID ='" + ID + "'";

            string findName = "select Name from tblHomeProducts where ProductID ='" + ID + "'";

            string findPrice = "select Price from tblHomeProducts where ProductID ='" + ID + "'";

            string findType = "select Type from tblHomeProducts where ProductID ='" + ID + "'";

            string findCollection = "select Collection from tblHomeProducts where ProductID ='" + ID + "'";

            string findDescription = "select Description from tblHomeProducts where ProductID ='" + ID + "'";

            string findDimentions = "select Dimentions from tblHomeProducts where ProductID ='" + ID + "'";

            SqlCommand showName = new SqlCommand(findName, con);
            SqlCommand showPrice = new SqlCommand(findPrice, con);
            SqlCommand showType = new SqlCommand(findType, con);
            SqlCommand showCollection = new SqlCommand(findCollection, con);
            SqlCommand showDescription = new SqlCommand(findDescription, con);
            SqlCommand showDimentions = new SqlCommand(findDimentions, con);
            con.Open();

            txtUpdateName.Text = showName.ExecuteScalar().ToString();
            txtUpdatePrice.Text = showPrice.ExecuteScalar().ToString();
            ddlUpdateType.Text = showPrice.ExecuteScalar().ToString();
            ddlUpdateCollection.Text = showCollection.ExecuteScalar().ToString();
            txtUpdateDescription.Text = showDescription.ExecuteScalar().ToString();
            txtUpdateDimentions.Text = showDimentions.ExecuteScalar().ToString();
            con.Close();

        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        //var to store the PK
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EvolveConnectionString"].ConnectionString);
        {
            // maybe some validation to check if the update has worked
            Boolean OK = true;

            try
            {
                SqlCommand UpdateRecord = new SqlCommand("sproc_tblHomeProduct_Update", con);
                UpdateRecord.CommandType = CommandType.StoredProcedure;

                SqlParameter ProductID = new SqlParameter("@ProductID", Convert.ToInt32(txtFindProductID.Text));
                SqlParameter Name = new SqlParameter("@Name", txtUpdateName.Text);
                SqlParameter Price = new SqlParameter("@Price", Convert.ToInt32(txtUpdatePrice.Text));
                SqlParameter Type = new SqlParameter("@Type", ddlUpdateType.Text);
                SqlParameter Collection = new SqlParameter("@Collection", ddlUpdateCollection.Text);
                SqlParameter Description = new SqlParameter("@Description", txtUpdateDescription.Text);
                SqlParameter Dimentions = new SqlParameter("@Dimentions", txtUpdateDimentions.Text);

                UpdateRecord.Parameters.Add(ProductID);
                UpdateRecord.Parameters.Add(Name);
                UpdateRecord.Parameters.Add(Price);
                UpdateRecord.Parameters.Add(Type);
                UpdateRecord.Parameters.Add(Collection);
                UpdateRecord.Parameters.Add(Description);
                UpdateRecord.Parameters.Add(Dimentions);

                con.Open();



                lblMessage.Text = "Record Has Been Updated";
            }
            catch
            {
                lblMessage.Text = "There was a error";
            }
        }


    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            lblUsername.Text = Session["User"].ToString();
        }
    }


</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-area">
        <section class="page-title">
            <h2>Update a current product</h2>
            <h4>Logged In As: <span><asp:Label Text="" runat="server" ID="lblUsername" /></span></h4>
        </section>
        <section class="obj-control">
            <aside>
                <article class="obj-edit">

                    <h5>Enter the Product ID and select Find Record</h5>
                    <asp:Button runat="server" ID="btnFind" Text="Find Record" OnClick="btnFind_Click" />
                    <table class="product-form" id="edit-form">
                        <tr>
                            <td>Product Itentifier</td>
                            <td>
                                <asp:TextBox runat="server" ID="txtFindProductID" placeholder="Enter PK"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Product Name</td>
                            <td><asp:TextBox runat="server" ID="txtUpdateName"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Product Price</td>
                            <td><asp:TextBox runat="server" ID="txtUpdatePrice"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Product Type</td>
                            <td>
                                <asp:DropDownList ID="ddlUpdateType" runat="server">
                                    <asp:ListItem Selected="True">Select a Product Type</asp:ListItem>
                                    <asp:ListItem>Sofa</asp:ListItem>
                                    <asp:ListItem>Chair</asp:ListItem>
                                    <asp:ListItem>Fridge</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>Product Collection</td>
                            <td>
                                <asp:DropDownList ID="ddlUpdateCollection" runat="server">
                                    <asp:ListItem Selected="True">Select a Product Collection</asp:ListItem>
                                    <asp:ListItem>Living Space</asp:ListItem>
                                    <asp:ListItem>Bedroom</asp:ListItem>
                                    <asp:ListItem>Office</asp:ListItem>
                                    <asp:ListItem>Garden</asp:ListItem>
                                    <asp:ListItem>Kitchen</asp:ListItem>
                                    <asp:ListItem>Bathroom</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>Description</td>
                            <td><asp:TextBox runat="server" ID="txtUpdateDescription" Columns="30" Rows="3"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Dimentions</td>
                            <td><asp:TextBox runat="server" ID="txtUpdateDimentions"></asp:TextBox></td>
                        </tr>
                    </table>
                    <asp:Button runat="server" ID="btnUpdate" Text="Update" onClick="btnUpdate_Click"/>
                    <asp:Label runat="server" ID="lblMessage"></asp:Label>
                </article>
            </aside>
            <aside>
                <!-- Jquery HERE for table filtering -->
                <h3>All Products</h3>
                <input type="search" id="search" placeholder="Filter by Product Name" />
                <!-- *** Insert table loop here to display data *** -->
                <table class="all-products">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Product Name</th>
                            <th>Price (&pound;)</th>
                            <th>Type</th>
                            <th>Collection</th>
                            <th>Description</th>
                            <th>Dimentions</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                            <%
                                ClassControlLib.clsHomeProductCollection HomeProductList = new ClassControlLib.clsHomeProductCollection();
                                Int32 Index = 0;
                                Int32 RecordCount = HomeProductList.Count;
                                while (Index < RecordCount)
                                {
                                    %>
                                    <tr>
                                        <td><%Response.Write(HomeProductList.HomeProductList[Index].ProductID); %></td>
                                        <td id="title"><%Response.Write(HomeProductList.HomeProductList[Index].Name); %></td>
                                        <td><%Response.Write(HomeProductList.HomeProductList[Index].Price); %></td>
                                        <td><%Response.Write(HomeProductList.HomeProductList[Index].Type); %></td>
                                        <td><%Response.Write(HomeProductList.HomeProductList[Index].Collection); %></td>
                                        <td><%Response.Write(HomeProductList.HomeProductList[Index].Description); %></td>
                                        <td><%Response.Write(HomeProductList.HomeProductList[Index].Dimentions); %></td>
                                    </tr>
                                    <%
                                        Index++;
                                 }
                                    %>
                    </tbody>
                  </table>
            </aside>
            </section>
        </section>
</asp:Content>
