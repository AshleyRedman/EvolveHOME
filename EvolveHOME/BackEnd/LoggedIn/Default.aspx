<%@ Page Title="Control Portal" Language="C#" MasterPageFile="~/LoggedIn/BackEndStyle.master" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Linq" %>
<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.Web.UI" %>
<%@ Import Namespace="System.Web.UI.WebControls" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EvolveConnectionString"].ConnectionString);

        if (Session["user"] != null)
        {
            lblUsername.Text = Session["User"].ToString();

            //
            string tOrderID = "select OrderID from tblHomeOrders where CONVERT(date, DeliveryDate) = CONVERT(date,GETDATE())";
            string tOrderCustomer = "select Username from tblHomeOrders where CONVERT(date, Deliverydate) = CONVERT(DATE,GETDATE())";


            SqlCommand showtOrders = new SqlCommand(tOrderID, con);
            SqlCommand showtOrderCustomer = new SqlCommand(tOrderCustomer, con);

            con.Open();
            lblOrderID.Text = showtOrders.ExecuteScalar().ToString();
            lbltOrderCustomer.Text = showtOrderCustomer.ExecuteScalar().ToString();
        }
        else
        {
            Response.Redirect("../Admin.aspx");
        }



    }


</script>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="content-area">

        <section class="page-title">
            <h2>Warehouse Pick List</h2>
            <h4>Logged In As: <span><asp:Label Text="" runat="server" ID="lblUsername" /></span></h4>
        </section>
        <section class="quickview-area">
            <article id="today-pick">

                <table>
                    <caption>Todays Pick</caption>
                    <thead>

                    </thead>
                    <tbody>
                        <tr>
                            <td>OrderID</td>
                            <td><asp:label runat="server" ID="lblOrderID"></asp:label></td>
                            <td><asp:Label runat="server" ID="lbltOrderCustomer"></asp:Label></td>
                        </tr>
                    </tbody>
                </table>


            </article>
            <article id="tomorrow-pick">
                
                <table>
                    <caption>All Orders</caption>
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>User</th>
                            <th>Date</th>
                            <th>Cart</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ClassControlLib.clsHomeOrderCollection HomeOrderList = new ClassControlLib.clsHomeOrderCollection();

                            Int32 Index = 0;
                            Int32 RecordCount = HomeOrderList.Count;
                            DateTime thisDay = DateTime.Today;
                            while (Index < RecordCount)
                            {
                                %>
                                <tr>
                                    <td> <%Response.Write(HomeOrderList.OrderList[Index].OrderID); %> </td>
                                    <td> <%Response.Write(HomeOrderList.OrderList[Index].Username); %> </td>
                                    <td> <%Response.Write(HomeOrderList.OrderList[Index].DeliveryDate); %> </td>
                                    <td> <%Response.Write(HomeOrderList.OrderList[Index].Cart); %> </td>
                                    <td> <%Response.Write(HomeOrderList.OrderList[Index].Status); %> </td>

                                </tr>
                                <%
                                  Index++;
                            }

                            %>
                    </tbody>

                </table>
            </article>
        </section>

    </section>
</asp:Content>

