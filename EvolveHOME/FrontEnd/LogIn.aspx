<%@ Page Title="" Language="C#" MasterPageFile="~/StylePage.master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="FrontEnd.LogIn" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        AuthenticateUser(txtUsername.Text, txtPassword.Text);
    }

    private void AuthenticateUser(string username, string password)
    {
        // ConfigurationManager class is in System.Configuration namespace
        string CS = ConfigurationManager.ConnectionStrings["EvolveConnectionString"].ConnectionString;
        // SqlConnection is in System.Data.SqlClient namespace
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("sproc_tblAccount_AuthenticateUser", con);
            cmd.CommandType = CommandType.StoredProcedure;

            //Formsauthentication is in system.web.security
            string encryptedpassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "SHA1");

            //sqlparameter is in System.Data namespace
            SqlParameter paramUsername = new SqlParameter("@Username", username);
            SqlParameter paramPassword = new SqlParameter("@Password", encryptedpassword);

            cmd.Parameters.Add(paramUsername);
            cmd.Parameters.Add(paramPassword);

            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                int retryAttempts = Convert.ToInt32(rdr["RetryAttempts"]);

                if (Convert.ToInt32(rdr["UserFound"]) == 0)
                {
                    lblMessage.Text = "Invalid User Name and/or Password.";
                }
                else if (Convert.ToBoolean(rdr["AccountLocked"]))
                {
                    lblMessage.Text = "Account locked, please contact administrator";
                }
                else if (retryAttempts > 0)
                {
                    // allowing user to attempt login 3 times
                    int attemptsLeft = (3 - retryAttempts);
                    lblMessage.Text = "Invalid User Name and/or Password. " +
                        attemptsLeft.ToString() + " attempt(s) left";
                }
                else if (Convert.ToBoolean(rdr["Authenticated"]))
                {
                    Session["user"] = txtUsername.Text;
                    Session["password"] = txtPassword.Text;
                    FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, chkBoxRememberMe.Checked);
                }
            }
        }
    }

</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <section id="access-area">
        <article>
            <h3>Returning Customer</h3>

                <table>
                    <tr>
                        <td>Username</td>
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
                        <td><asp:CheckBox ID="chkBoxRememberMe" runat="server" Text="Remember Me"/></td>
                        <td><asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label></td>
                    </tr>
                </table>
                <asp:Button Text="Log In" runat="server" ID="btnLogin" OnClick="btnLogin_Click" />
                <asp:Label runat="server" ID="lblErrorMessage"></asp:Label>

        </article>
        <article>
            
        </article>
    </section>
</asp:Content>

