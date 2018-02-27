<%@ Page Title="Control Portal" Language="C#" MasterPageFile="~/LoggedIn/BackEndStyle.master" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Linq" %>
<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.Web.UI" %>
<%@ Import Namespace="System.Web.UI.WebControls" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EvolveConnectionString"].ConnectionString);

        if (Session["user"] != null)
        {
            lblUsername.Text = Session["User"].ToString();

            con.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("select OrderID, Username, Deliverydate, Cart, Status from tblHomeOrders where CAST(DeliveryDate AS DATE) = CAST(GETDATE() AS DATE) AND Status LIKE '%Awaiting Delivery%'", con);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            gvOrders.DataSource = dtbl;
            gvOrders.DataBind();

        }
        else
        {
            Response.Redirect("../Admin.aspx");
        }



    }


    protected void ckCompleted_CheckedChanged(object sender, EventArgs e)
    {


    }
</script>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="content-area">

        <section class="page-title">
            <h2>Warehouse Pick List</h2>
            <h4>Logged In As: <span><asp:Label Text="" runat="server" ID="lblUsername" /></span></h4>
        </section>
        <section class="quickview-area">
            <article id="today-pick">

                <asp:GridView ID="gvOrders" runat="server" AutoGenerateColumns="false" CssClass="picks">
                    <Columns>
                        <asp:BoundField DataField="OrderID" HeaderText ="Order ID" ItemStyle-CssClass="BoundField" />
                        <asp:BoundField DataField="Username" HeaderText ="User Name" ItemStyle-CssClass="BoundField" />
                        <asp:BoundField DataField="Deliverydate" HeaderText ="Delivery Date" ItemStyle-CssClass="BoundField" />
                        <asp:BoundField DataField="Cart" HeaderText ="Cart" ItemStyle-CssClass="BoundField" />
                        <asp:BoundField DataField="Status" HeaderText="Status" ItemStyle-CssClass="BoundField" />
                        <asp:TemplateField HeaderText="Completed?" ItemStyle-CssClass="BoundField">
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="ckCompleted" OnCheckedChanged="ckCompleted_CheckedChanged" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>


            </article>
        </section>

    </section>
</asp:Content>

