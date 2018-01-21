<%@ Page Title="Delivery Control" Language="C#" MasterPageFile="~/LoggedIn/BackEndStyle.master" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
            {
                lblUsername.Text = Session["User"].ToString();
            }
    }


</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="content-area">
        <section class="page-title">
            <h2>Delivery Control</h2>
            <h4>Logged In As: <span><asp:Label Text="" runat="server" ID="lblUsername" /></span></h4>
        </section>
        <section class="obj-control">
            <aside>
                <h1>Report Chart HERE - Coming Soon</h1>
            </aside>
            <aside>
                <!-- Jquery HERE for table filtering -->
                <h3>Past Deliveries</h3>
                <input type="search" id="search" placeholder="Filter By Date" />
                <!-- *** Insert table loop here to display data *** -->
                <table class="all-products">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Customer ID</th>
                            <th>Order date</th>
                            <th>Deliver Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>47</td>
                            <td>26/11/2017</td>
                            <td id="title">29/11/2017</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>8</td>
                            <td>26/11/2017</td>
                            <td id="title">29/11/2017</td>
                        </tr>
                    </tbody>
                </table>
            </aside>
        </section>
    </section>
</asp:Content>

