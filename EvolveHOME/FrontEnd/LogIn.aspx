<%@ Page Title="" Language="C#" MasterPageFile="~/StylePage.master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="FrontEnd.LogIn" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        lblErrorMessage.Visible = false;
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {

    }

</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <section id="access-area">
        <article>
            <h3>Returning Customer</h3>
            <form runat="server">
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
                </table>
                <asp:Button Text="Log In" runat="server" ID="btnLogin" OnClick="btnLogin_Click" />
                <asp:Label runat="server" ID="lblErrorMessage">Please Try Again</asp:Label>
            </form>
        </article>
        <article>
            
        </article>
    </section>
</asp:Content>

