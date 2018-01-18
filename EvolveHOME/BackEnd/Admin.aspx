<%@ Page Title="eVolveHOME Admin" Language="C#" MasterPageFile="~/LoggedOut.master" %>

<script runat="server">

    protected void btnsign_Click(object sender, EventArgs e)
    {

        Response.Redirect("LoggedIn/Default.aspx");
    }




</script>





<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section>
        <form runat="server">
        <table>
            <tr>
                <th>Login Here</th>
            </tr>
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

                </td>
                <td>
                    <asp:Button runat="server" ID="btnsign" OnClick="btnsign_Click" Text="Sign In" />
                </td>
            </tr>
        </table>
        </form>
    </section>
</asp:Content>

