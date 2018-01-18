<%@ Page Title="eVolveHOME Admin" Language="C#" MasterPageFile="~/LoggedOut.master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        lblErrorMessage.Visible = false;
    }

    protected void btnsign_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EvolveConnectionString"].ConnectionString);

        {
            con.Open();
            string query = "select count(1) from tblRegistration where username=@username and password=@password";
            SqlCommand sqlCmd = new SqlCommand(query, con);
            string encryptedpassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1");
            sqlCmd.Parameters.AddWithValue("@username", txtUsername.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@password", encryptedpassword);
            int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
            if (count ==1)
            {
                //create the session
                Session["username"] = txtUsername.Text.Trim();
                Response.Redirect("LoggedIn/Default.aspx");
            }
            else
            {
                lblErrorMessage.Visible = true;
            }
        }
    }





</script>





<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section>
        <form runat="server">
        <table>
            <tr>
                <td>User ID</td>
                <td>
                    <asp:TextBox runat="server" ID="txtUsername" placeholder="username"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox runat="server" ID="txtPassword" placeholder="password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button runat="server" ID="btnsign" OnClick="btnsign_Click" Text="Sign In" />
                </td>
                <asp:Label runat="server" ID="lblErrorMessage">Please Try Again</asp:Label>
            </tr>
        </table>
        </form>
    </section>
</asp:Content>

