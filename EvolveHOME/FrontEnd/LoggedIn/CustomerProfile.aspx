<%@ Page Title="" Language="C#" MasterPageFile="~/LoggedIn/LoggedIm.Master" AutoEventWireup="true" CodeBehind="CustomerProfile.aspx.cs" Inherits="FrontEnd.LoggedIn.CustomerProfile" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EvolveConnectionString"].ConnectionString);

        string SessionID = System.Web.HttpContext.Current.Session.SessionID;
        string Username = Session["user"].ToString();
        string password = Session["password"].ToString();
        // get data based on session

        
       

        if(Session["user"] ==null)
        {
            Response.Redirect("../Default.aspx");
        }
        else
        {
            lblSessionID.Text = SessionID;
            lblAccountID.Text = "Account ID HERE";
            lblUsername.Text = Username;
            lblPassword.Text = password;
            lblCustoemrID.Text = "Custerom ID HERE";
            lblFirstName.Text = "Customer FirstName HERE";
            lblLastName.Text = "Customer LastName HERE";
            lblEmail.Text = "Customer Email Here";
            lblAddress1.Text = "Customer Address Line 1 HERE";
            lblAddress2.Text = "Customer Address Line 2 Here";
            lblCity.Text = "Customer City HERE";
            lblRegion.Text = "Customer Region here";
            lblPostCode.Text = "Customer Postcode here";
            lblCountry.Text = "Customer Country here";
           
        }
    }

</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <h3>Your Profile</h3>

    <ul>
        <li><asp:Label runat="server" ID="lblSessionID"></asp:Label></li>
        <li><asp:Label runat="server" ID="lblAccountID"></asp:Label></li>
        <li>Username: <asp:Label runat="server" ID="lblUsername"></asp:Label></li>
        <li>Password: <asp:Label runat="server" ID="lblPassword"></asp:Label></li>
        <li><asp:Label runat="server" ID="lblCustoemrID"></asp:Label></li>
        <li><asp:Label runat="server" ID="lblFirstName"></asp:Label></li>
        <li><asp:Label runat="server" ID="lblLastName"></asp:Label></li>
        <li><asp:Label runat="server" ID="lblEmail"></asp:Label></li>
        <li><asp:Label runat="server" ID="lblAddress1"></asp:Label></li>
        <li><asp:Label runat="server" ID="lblAddress2"></asp:Label></li>
        <li><asp:Label runat="server" ID="lblCity"></asp:Label></li>
        <li><asp:Label runat="server" ID="lblRegion"></asp:Label></li>
        <li><asp:Label runat="server" ID="lblPostCode"></asp:Label></li>
        <li><asp:Label runat="server" ID="lblCountry"></asp:Label></li>
    </ul>
    


</asp:Content>
