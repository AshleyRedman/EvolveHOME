<%@ Page Title="Your Basket" Language="C#" MasterPageFile="LoggedIm.master" %>
<%@ Import Namespace="ClassControlLib" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {



    }




</script>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <section id="BasketDisplay">
        <h2>Your Basket</h2>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EvolveConnectionString %>" SelectCommand="SELECT [Name], [Price], [UBID] FROM [tblHomeUserBasket] WHERE ([UBID] = @UBID)">
            <SelectParameters>
                <asp:Parameter Name="UBID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UBID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="UBID" HeaderText="UBID" InsertVisible="False" ReadOnly="True" SortExpression="UBID" />
            </Columns>
        </asp:GridView>


        <table>
            <thead>
                <tr>
                    <td>Product Name</td>
                    <td>Product Price</td>
                </tr>
            </thead>
            <tbody>
                <%
                    ClassControlLib.clsHomeUserBasket HomeBasketList = new ClassControlLib.clsHomeUserBasket();
                    Int32 Index = 0;
                    Int32 RecordCount = HomeBasketList.Count;
                    while (Index < RecordCount)
                    {
                        %>
                        <tr>
                            <td><%Response.Write(HomeBasketList.HomeBasketList[Index].Name);%></td>
                            <td> <%Response.Write(HomeBasketList.HomeBasketList[Index].Price);%> </td>
                        </tr>
                <% Index++; } %>
                

            </tbody>
        </table>


        <a href="ChooseDelivery.aspx" class="ContinueButton"><div>Continue to delivery...</div></a>

    </section>

</asp:Content>

