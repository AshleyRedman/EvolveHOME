<%@ Page Title="Order Confirmation" Language="C#" MasterPageFile="~/LoggedIn/LoggedIm.Master" AutoEventWireup="true" CodeBehind="OrderConfirmation.aspx.cs" Inherits="FrontEnd.LoggedIn.OrderConfirmation" %>
<%@ Import Namespace="ClassControlLib" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EvolveConnectionString"].ConnectionString);
            {
                string Username = Session["user"].ToString();
                string OrderFound = "select MAX(OrderID) from tblHomeOrders where Username ='"+ Username + "'";

                SqlCommand FindOrder = new SqlCommand(OrderFound, con);

                con.Open();

                lblUsername.Text = Username;
                lblOrderID.Text = FindOrder.ExecuteScalar().ToString();

                con.Close();
            }


        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }

    }

    protected void btnConfirm_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }

</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <section>
        <h2>Order Confirmation</h2>
        <h4>Thank you! <asp:label runat="server" id="lblUsername"></asp:label></h4>
        <p>Your Order Reference is <asp:label runat="server" id="lblOrderID"></asp:label></p>
        <asp:button runat="server" ID="btnConfirm" OnClick="btnConfirm_OnClick" text="Continue.." cssClass=".Button" />
    </section>
    <script src="../js/shoppingCart.js"></script>
</asp:Content>
