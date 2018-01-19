<%@ Page Title="" Language="C#" MasterPageFile="~/LoggedIn/BackEndStyle.master" AutoEventWireup="true" CodeBehind="ProductDelete.aspx.cs" Inherits="BackEnd.LoggedIn.ProductDelete" %>


<script runat="server">

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        ClassControlLib.clsHomeProductCollection HomeProducts = new ClassControlLib.clsHomeProductCollection();
        Int32 RemovedProduct;

        RemovedProduct = Convert.ToInt32(txtDeleteID.Text);

        HomeProducts.ThisHomeProduct.Find(RemovedProduct);

        HomeProducts.Delete();

        lblError.Text = "Product Removed";


    }


</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-area">
        <section class="page-title">
            <h2>Delete a Product</h2>
            <h4>Logged In:  <span>Admin Name</span></h4>
        </section>
        <section class="obj-control">
            <aside>
                <article class="obj-del">
                    <form runat="server">
                    <table class="product-form" id="del-form">
                        <tr>
                            <td>Enter Product Itentifier</td>
                            <td>
                                <asp:TextBox runat="server" ID="txtDeleteID"></asp:TextBox>
                                <asp:Button Text="Delete Product" runat="server" ID="btnDelete" OnClick="btnDelete_Click" />
                            </td>
                        </tr>
                    </table>
                    <asp:Label Text="" runat="server" ID="lblError" />
                    </form>
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
