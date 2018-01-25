<%@ Page Title="Your Profile" Language="C#" MasterPageFile="~/LoggedIn/LoggedIm.Master" AutoEventWireup="true" CodeBehind="CustomerProfile.aspx.cs" Inherits="FrontEnd.LoggedIn.CustomerProfile" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EvolveConnectionString"].ConnectionString);
        {
            // create var to store current Users Username
            string Username = Session["user"].ToString();

            // Show session ID if needed, probably not
            //string SessionID = System.Web.HttpContext.Current.Session.SessionID;    

            string FindAccountID = "select AccountID from tblAccount where Username='"+ Username + "'";
            string FindCustomerID = "select CustomerID from tblCustomer inner join tblAccount on tblCustomer.AccountID = tblAccount.AccountID where tblAccount.Username='"+ Username + "'";
            string FindFirstName = "select FirstName from tblCustomer inner join tblAccount on tblCustomer.AccountID = tblAccount.AccountID where tblAccount.Username='"+ Username + "'";
            string FindLastName = "select LastName from tblCustomer inner join tblAccount on tblCustomer.AccountID = tblAccount.AccountID where tblAccount.Username='"+ Username + "'";
            string FindEmail = "select Email from tblCustomer inner join tblAccount on tblCustomer.AccountID = tblAccount.AccountID where tblAccount.Username='"+ Username + "'";
            string FindAddress1 = "select AddressLine1 from tblCustomer inner join tblAccount on tblCustomer.AccountID = tblAccount.AccountID where tblAccount.Username='"+ Username + "'";
            string FindAddress2 = "select AddressLine2 from tblCustomer inner join tblAccount on tblCustomer.AccountID = tblAccount.AccountID where tblAccount.Username='"+ Username + "'";
            string FindCity = "select City from tblCustomer inner join tblAccount on tblCustomer.AccountID = tblAccount.AccountID where tblAccount.Username='"+ Username + "'";
            string FindRegion = "select Region from tblCustomer inner join tblAccount on tblCustomer.AccountID = tblAccount.AccountID where tblAccount.Username='"+ Username + "'";
            string FindPostCode = "select PostCode from tblCustomer inner join tblAccount on tblCustomer.AccountID = tblAccount.AccountID where tblAccount.Username='"+ Username + "'";
            string FindCountry = "select Country from tblCustomer inner join tblAccount on tblCustomer.AccountID = tblAccount.AccountID where tblAccount.Username='"+ Username + "'";
            string FindProfileImage = "select ProfileImagePath from tblCustomer inner join tblAccount on tblCustomer.AccountID = tblAccount.AccountID where tblAccount.Username='"+ Username + "'";


            SqlCommand showAccountID = new SqlCommand(FindAccountID, con);
            SqlCommand showCustomerID = new SqlCommand(FindCustomerID, con);
            SqlCommand showFirstName = new SqlCommand(FindFirstName, con);
            SqlCommand showLastName = new SqlCommand(FindLastName, con);
            SqlCommand showEmail = new SqlCommand(FindEmail, con);
            SqlCommand showAddress1 = new SqlCommand(FindAddress1, con);
            SqlCommand showAddress2 = new SqlCommand(FindAddress2, con);
            SqlCommand showCity = new SqlCommand(FindCity, con);
            SqlCommand showRegion = new SqlCommand(FindRegion, con);
            SqlCommand showPostCode = new SqlCommand(FindPostCode, con);
            SqlCommand showCountry = new SqlCommand(FindCountry, con);
            SqlCommand showProfileImage = new SqlCommand(FindProfileImage, con);
            

            con.Open();

            lblAccountID.Text = showAccountID.ExecuteScalar().ToString();
            lblCustomerID.Text = showCustomerID.ExecuteScalar().ToString();
            lblUsername.Text = Username;
            lblFirstName.Text = showFirstName.ExecuteScalar().ToString();
            lblLastName.Text = showLastName.ExecuteScalar().ToString();
            lblEmail.Text = showEmail.ExecuteScalar().ToString();
            lblAddress1.Text = showAddress1.ExecuteScalar().ToString();
            lblAddress2.Text = showAddress2.ExecuteScalar().ToString();
            lblCity.Text = showCity.ExecuteScalar().ToString();
            lblRegion.Text = showRegion.ExecuteScalar().ToString();
            lblPostCode.Text = showPostCode.ExecuteScalar().ToString();
            lblCountry.Text = showCountry.ExecuteScalar().ToString();
            imgProfileImg.ImageUrl = showProfileImage.ExecuteScalar().ToString();


            con.Close();
        }
    }

</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <h3>Your Profile</h3>
    <section>
        <article class="ProfileLeft">
        <table id="ProfileData">
            <thead>
                <tr></tr>
            </thead>
            <tbody>
                <tr>
                    <td>AccountID: <asp:Label runat="server" ID="lblAccountID"></asp:Label></td>
                </tr>
                <tr>
                    <td>CustomerID: <asp:Label runat="server" ID="lblCustomerID"></asp:Label></td>
                </tr>
                <tr>
                    <td>Username: <asp:Label runat="server" ID="lblUsername"></asp:Label></td>
                </tr>
                <tr>
                    <td>First Name: <asp:Label runat="server" ID="lblFirstName"></asp:Label></td>
                </tr>
                <tr>
                    <td>Last Name: <asp:Label runat="server" ID="lblLastName"></asp:Label></td>
                </tr>
                <tr>
                    <td>Email: <asp:Label runat="server" ID="lblEmail"></asp:Label></td>
                </tr>
                <tr>
                    <td>Address Line 1: <asp:Label runat="server" ID="lblAddress1"></asp:Label></td>
                </tr>
                <tr>
                    <td>Address Line 2: <asp:Label runat="server" ID="lblAddress2"></asp:Label></td>
                </tr>
                <tr>
                    <td>City: <asp:Label runat="server" ID="lblCity"></asp:Label></td>
                </tr>
                <tr>
                    <td>Region: <asp:Label runat="server" ID="lblRegion"></asp:Label></td>
                </tr>
                <tr>
                    <td>PostCode: <asp:Label runat="server" ID="lblPostCode"></asp:Label></td>
                </tr>
                <tr>
                    <td>Country: <asp:Label runat="server" ID="lblCountry"></asp:Label></td>
                </tr>
            </tbody>
        </table>
        </article>

        <article class="ProfileRight">
            <asp:Image runat="server" ID="imgProfileImg" class="ProfileImage"/>
        </article>
    </section>


</asp:Content>
