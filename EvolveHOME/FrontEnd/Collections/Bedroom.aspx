<%@ Page Title="Bedroom Products" Language="C#" MasterPageFile="~/Collections/Collection.Master" AutoEventWireup="true" CodeBehind="Bedroom.aspx.cs" Inherits="FrontEnd.Collections.Bedroom" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EvolveConnectionString"].ConnectionString);

        con.Open();
        SqlDataAdapter sqlDa = new SqlDataAdapter("select Name, Price, ImagePath from tblHomeProducts where Collection LIKE '%Bedroom%';", con);
        DataTable dtbl = new DataTable();
        sqlDa.Fill(dtbl);
        gvOfficeProducts.DataSource = dtbl;
        gvOfficeProducts.DataBind();
    }

    protected void lnkSelect_Click(object sender, EventArgs e)
    {
        int productID = Convert.ToInt32((sender as LinkButton).CommandArgument);
    }

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <asp:GridView ID="gvOfficeProducts" runat="server" AutoGenerateColumns="false" CssClass="CollectionTable" BorderStyle="None" BorderWidth="0">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-CssClass="CollectionBoundField" ItemStyle-BorderStyle="Ridge" />
            <asp:BoundField DataField="Price" HeaderText="Price" ItemStyle-CssClass="CollectionBoundField" ItemStyle-BorderStyle="Ridge" />
            <asp:ImageField DataImageUrlField ="ImagePath" HeaderText="Image" ItemStyle-CssClass="CollectionBoundFieldImg" ItemStyle-BorderStyle="Ridge"></asp:ImageField>
            <asp:TemplateField ItemStyle-BorderStyle="Ridge">
                <ItemTemplate>
                    <asp:LinkButton runat="server" Text="View" CssClass="ViewButton"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

    </asp:GridView>
        


</asp:Content>