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
            // set the query against the db connection
            SqlCommand showAccountID = new SqlCommand(FindAccountID, con);
            // open db connection
            con.Open();
            //set lables to the results of the query
            lblAccountID.Text = showAccountID.ExecuteScalar().ToString();
            lblUsername.Text = Username;
            //close db connection
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
                    <td>Username: <asp:Label runat="server" ID="lblUsername"></asp:Label></td>
                </tr>
            </tbody>
        </table>
        </article>

        <article class="ProfileRight">
            
        </article>
    </section>


</asp:Content>
