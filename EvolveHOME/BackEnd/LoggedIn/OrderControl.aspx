<%@ Page Title="Order Control" Language="C#" MasterPageFile="~/LoggedIn/BackEndStyle.master" %>

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
            <h2>Order Control</h2>
            <h4>Logged In As: <span><asp:Label Text="" runat="server" ID="lblUsername" /></span></h4>
        </section>
        <section class="obj-control">
            <aside>
                <!-- Jquery HERE for table filtering -->
                <h3>Current Orders to Process</h3>
                <input type="search" id="search" placeholder="Filter By Order ID" />
                <!-- *** Insert table loop here to display data *** -->
                <table class="all-products" id="OrdersTo">
                    <thead>
                        <tr>
                            <th>OrderLine ID</th>
                            <th>Order ID</th>
                            <th>Product name</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>36</td>
                            <td id="title">36</td>
                            <td>Blue Chair</td>
                            <td>645.99</td>
                        </tr>
                        <tr>
                            <td>37</td>
                            <td id="title">37</td>
                            <td>Red Sofa</td>
                            <td>366.99</td>
                        </tr>
                    </tbody>
                </table>
            </aside>
            <aside>
                <!-- Jquery HERE for table filtering -->
                <h3>Past Orders</h3>
                <input type="search" id="search" placeholder="Filter By Order ID" />
                <!-- *** Insert table loop here to display data *** -->
                <table class="all-products" id="PastOrders">
                    <thead>
                        <tr>
                            <th>OrderLine ID</th>
                            <th>Order ID</th>
                            <th>Product name</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td id="title">1</td>
                            <td>Green Chair</td>
                            <td>29.99</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td id="title">2</td>
                            <td>Yellow Chair</td>
                            <td>29.99</td>
                        </tr>
                    </tbody>
                </table>
            </aside>
        </section>
    </section>
</asp:Content>

