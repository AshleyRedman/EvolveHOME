<%@ Page Title="Product Control" Language="C#" MasterPageFile="~/LoggedIn/BackEndStyle.master" %>

<script runat="server">
    

</script>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="content-area">
        <section class="page-title">
            <h2>Product Control</h2>
            <h4>Logged In:  <span>Admin Name</span></h4>
        </section>
        <section class="obj-control">
            <aside>
                <ul id="CRUDcontrol">
                    <li><a href="ProductAdd.aspx"><input type="submit" value="Add Products" /></a></li>
                    <li><a href="ProductUpdate.aspx"><input type="submit" value="Update Products" /></a></li>
                    <li><a href="ProductDelete.aspx"><input type="submit" value="Delete Products" /></a></li>
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
</asp:Content>
