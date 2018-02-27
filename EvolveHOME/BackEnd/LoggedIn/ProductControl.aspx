<%@ Page Title="Product Control" Language="C#" MasterPageFile="~/LoggedIn/BackEndStyle.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            lblUsername.Text = Session["User"].ToString();
        }
    }

    protected void btnAddLink_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProductAdd.aspx");
    }
    protected void btnUpdateLink_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProductUpdate.aspx");
    }
    protected void btnDeleteLink_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProductDelete.aspx");
    }


</script>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="content-area">
        <section class="page-title">
            <h2>Product Control</h2>
            <h4>Logged In As: <span><asp:Label Text="" runat="server" ID="lblUsername" /></span></h4>
        </section>
        <section class="obj-control">
            <aside>
                <ul id="CRUDcontrol">
                    <li>
                        <asp:Button Text="Add Products" runat="server" ID="btnAddLink" OnClick="btnAddLink_Click" />
                    </li>
                    <li>
                        <asp:Button Text="Update Products" runat="server" ID="btnUpdateLink" OnClick="btnUpdateLink_Click" />
                    </li>
                    <li>
                        <asp:Button Text="Delete Product" runat="server" ID="btnDeleteLink" OnClick="btnUpdateLink_Click" />
                    </li>
                </ul>
                  
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
    <script type="text/javascript" src="js/scripts.js"></script>
</asp:Content>
