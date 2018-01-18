<%@ Page Title="Product Update" Language="C#" MasterPageFile="~/LoggedIn/BackEndStyle.master" AutoEventWireup="true" CodeBehind="ProductUpdate.aspx.cs" Inherits="BackEnd.LoggedIn.ProductUpdate" %>
<%@  %>

<script runat="server">


    protected void btnFind_CLick(object sender, EventArgs e)
    {
        ClassControlLib.clsHomeProductCollection HomeProduct = new ClassControlLib.clsHomeProductCollection();

        
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        //var to store the PK

    }


</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-area">
        <section class="page-title">
            <h2>Update a current product</h2>
            <h4>Logged In:  <span>Admin Name</span></h4>
        </section>
        <section class="obj-control">
            <aside>
                <article class="obj-edit">
                    <form runat="server">
                    <h5>Enter the Product ID and select Find Record</h5>
                    <asp:Button runat="server" ID="btnFind" Text="Find Record" />
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
                            <td><asp:TextBox runat="server" ID="txtUpdateType"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Product Collection</td>
                            <td><asp:TextBox runat="server" ID="txtUpdateCollection"></asp:TextBox></td>
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
                    <asp:Button runat="server" ID="btnUpdate" Text="Update" />
                    <asp:Label ID="lblUpdate" CssClass="label" runat="server">Message</asp:Label>
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
