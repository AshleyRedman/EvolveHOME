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
            //create var to find the users ID
            string FindAccountID = "select AccountID from tblAccount where Username='"+ Username + "'";

            string firstname = "select FirstName from tblCustomer where Username ='"+ Username + "'";
            string lastname = "select LastName from tblCustomer where Username ='"+ Username + "'";
            string email = "select Email from tblCustomer where Username ='"+ Username + "'";
            string address1 = "select AddressLine1 from tblCustomer where Username ='"+ Username + "'";
            string address2 = "select AddressLine2 from tblCustomer where Username ='"+ Username + "'";
            string city = "select City from tblCustomer where Username ='"+ Username + "'";
            string region = "select Region from tblCustomer where Username ='"+ Username + "'";
            string postcode = "select PostCode from tblCustomer where Username ='"+ Username + "'";
            string country = "select Country from tblCustomer where Username ='"+ Username + "'";
            string profileimg = "select ProfileImagePath from tblCustomer where Username ='"+ Username + "'";

            // set the query against the db connection
            SqlCommand showAccountID = new SqlCommand(FindAccountID, con);
            SqlCommand showFirstName = new SqlCommand(firstname, con);
            SqlCommand showLastName = new SqlCommand(lastname, con);
            SqlCommand showEmail = new SqlCommand(email, con);
            SqlCommand showAddress1 = new SqlCommand(address1, con);
            SqlCommand showAddress2 = new SqlCommand(address2, con);
            SqlCommand showCity = new SqlCommand(city, con);
            SqlCommand showRegion = new SqlCommand(region, con);
            SqlCommand showPostCode = new SqlCommand(postcode, con);
            SqlCommand showCountry = new SqlCommand(country, con);
            SqlCommand showImage = new SqlCommand(profileimg, con);
            // open db connection
            con.Open();
            //set lables to the results of the query
            lblAccountID.Text = showAccountID.ExecuteScalar().ToString();
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
            imgProfileImage.ImageUrl = showImage.ExecuteScalar().ToString();
            //close db connection
            con.Close();
        }

        // here add check to see if customer data is here
        // if it is there display based on username match
        // if not, visable addition textboxes
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
                    <td>Username: <asp:Label runat="server" ID="lblUsername"></asp:Label></td>
                </tr>
                <tr>
                    <td>FirtName: <asp:Label runat="server" ID="lblFirstName"></asp:Label></td>
                </tr>
                <tr>
                    <td>LastName: <asp:Label runat="server" ID="lblLastName"></asp:Label></td>
                </tr>
                <tr>
                    <td>Email: <asp:Label runat="server" ID="lblEmail"></asp:Label></td>
                </tr>
                <tr>
                    <td>Address Line One: <asp:Label runat="server" ID="lblAddress1"></asp:Label></td>
                </tr>
                <tr>
                    <td>Address Line Two: <asp:Label runat="server" ID="lblAddress2"></asp:Label></td>
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
            <asp:Image ID="imgProfileImage" runat="server" />
        </article>
    </section>


</asp:Content>
