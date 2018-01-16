<%@ Page Title="eVolveHOME Admin" Language="C#" MasterPageFile="~/LoggedOut.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section>
        <table>
            <tr>
                <th>Login Here</th>
            </tr>
            <tr>
                <td>User ID</td>
                <td>
                    <input type="text" value="" />
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <input type="password" value="" />
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <a href="LoggedIn/Default.aspx">
                        <input type="submit" value="LogIn" />
                    </a>
                    
                </td>
            </tr>
        </table>
    </section>
</asp:Content>

