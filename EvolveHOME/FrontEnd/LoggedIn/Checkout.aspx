<%@ Page Title="Checkout" Language="C#" MasterPageFile="LoggedIm.master" %>
<%@ Import Namespace="ClassControlLib" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.Net.Mail" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Linq" %>
<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.Web.UI" %>
<%@ Import Namespace="System.Web.UI.WebControls" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            //lblHidden.Visible = true;

        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }

    }

    protected void btnAddOrder_Click(object sender, EventArgs e)
    {

        ClassControlLib.clsHomeOrderCollection HomeOrder = new ClassControlLib.clsHomeOrderCollection();

        string Username = Session["user"].ToString();
        // set status of a new order
        string Status = "Awaiting Delivery";
        Boolean OK = HomeOrder.ThisOrder.Valid(calDeliveryDate.SelectedDate.ToString(), Status, txtCardNumber.Text, txtExpDate.Text, txtCVC.Text);
        //create int to store the account id
        // create a DateTime to store selected date time
        DateTime DeliveryDate = calDeliveryDate.SelectedDate;

        string CardNumber = txtCardNumber.Text;
        string ExpireDate = txtExpDate.Text;
        string CVC = txtCVC.Text;
        // set json string to value
        string Cart = hiddenCart.Value;



        if (OK == true)
        {
            //Find data to add to order
            HomeOrder.ThisOrder.Username = Username;
            HomeOrder.ThisOrder.DeliveryDate = DeliveryDate;
            HomeOrder.ThisOrder.Cart = Cart;
            HomeOrder.ThisOrder.Status = Status;
            HomeOrder.ThisOrder.CardNumber = CardNumber;
            HomeOrder.ThisOrder.ExpireDate = ExpireDate;
            HomeOrder.ThisOrder.CVC = CVC;
            // add the order to the DB
            HomeOrder.Add();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EvolveConnectionString"].ConnectionString);
            {
                //Send Confirmation Email to user upon success
                //Find Usera Email
                string UserEmail = "select Email from tblCustomer where Username ='"+ Username + "'";
                SqlCommand queryEmail = new SqlCommand(UserEmail, con);
                con.Open();
                string FoundEmail = queryEmail.ExecuteScalar().ToString();
                con.Close();


                SmtpClient smtpClient = new SmtpClient();

                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new NetworkCredential("evolvesystmsltd@gmail.com", "ComputingBSC123");
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                MailMessage mail = new MailMessage();

                //Set Email message with body
                mail.From = new MailAddress("evolvesystemsltd@gmail.com");
                mail.To.Add(new MailAddress(FoundEmail));
                mail.CC.Add(new MailAddress("evolvesystemsltd@gmail.com"));
                mail.Subject = "Purchase Confirmation!";
                mail.IsBodyHtml = true;
                mail.Body = "<h1>Thank you! " + Username + "</h1> <br /> <p>Your order has been accepted</p> <br /> <p>Your Order will be delivery on "+ DeliveryDate +" </p> <br /><p>Below is a review of your order</p> <br /> " + Cart+ "";


                smtpClient.Send(mail);
            }

            //Once order is success, redirect to confirmation page
            Response.Redirect("OrderConfirmation.aspx");
            //lblError.Text = "Successfully ordered";
            //Response.Redirect("OrderSummary.aspx");
        }
        else
        {
            lblError.Text = "Please try again";
        }
    }

</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

     <!-- Create a hidden field element - once the page loads, this will hold the local storage cart with JSON data -->
     <asp:HiddenField runat="server" ID="hiddenCart" />

    <!-- JS Script  -->
    <script>
        // Window load function allows the Local Storage of JSON to be set the value of the hidden asp field
        window.onload = load();
        function load() {

            document.getElementById('<%= hiddenCart.ClientID %>').value = JSON.stringify(localStorage.getItem("shoppingCart"));
        }
    </script>

    <section id="CheckoutPage">
        <section id="delivery-review">
            <aside>
                <h3>Review Your Order</h3>
                <table id="show-cart">
                </table>
                
            </aside>
            <aside>
                <h3>Choose Your Delivery Date</h3>
                <asp:Calendar ID="calDeliveryDate" runat="server" CssClass="DatePicker"></asp:Calendar>
            </aside>

        </section>
        <section id="take-payment">

            <table>
                <thead>
                    <tr>
                        <td>Enter Payment Details</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Card Number</td>
                        <td><asp:TextBox runat="server" ID="txtCardNumber"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Expiration Date</td>
                        <td><asp:TextBox runat="server" ID="txtExpDate"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Security Code</td>
                        <td><asp:TextBox runat="server" ID="txtCVC"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:Label runat="server" ID="lblError"></asp:Label></td>
                        <td><asp:Button ID="btnAddOrder" runat="server" Text="Confirm Payment" OnClick="btnAddOrder_Click" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><img src="../media/img/icons/cards.png" alt="card icons" id="card-icons" /></td>
                    </tr>
                </tbody>
            </table>
        </section>
        <!-- Cart script needs to placed here to allow the inpage functions to reference -->
        <script src="../js/shoppingCart.js"></script>

        <script>

            $(".add-to-cart").click(function (event) {
                event.preventDefault();
                var name = $(this).attr("data-name");
                var price = Number($(this).attr("data-price"));

                shoppingCart.addItemToCart(name, price, 1);
                displayCart();
            });

            $("#clear-cart").click(function (event) {
                shoppingCart.clearCart();
                displayCart();
            });

            function displayCart() {
                var cartArray = shoppingCart.listCart();
                console.log(cartArray);
                var output = "";

                for (var i in cartArray) {
                    output += "<tr>"
                        + "<td>" + cartArray[i].name + "</td>"

                        + "<td>" + "<input class='item-count' type='number' data-name='"
                        + cartArray[i].name
                        + "' value='" + cartArray[i].count + "' > </td>"
                        + "</tr>";
                }

                $("#show-cart").html(output);
                $("#count-cart").html(shoppingCart.countCart());
                $("#total-cart").html(shoppingCart.totalCart());
            }

            $("#show-cart").on("click", ".delete-item", function (event) {
                var name = $(this).attr("data-name");
                shoppingCart.removeItemFromCartAll(name);
                displayCart();
            });

            $("#show-cart").on("click", ".subtract-item", function (event) {
                var name = $(this).attr("data-name");
                shoppingCart.removeItemFromCart(name);
                displayCart();
            });

            $("#show-cart").on("click", ".plus-item", function (event) {
                var name = $(this).attr("data-name");
                shoppingCart.addItemToCart(name, 0, 1);
                displayCart();
            });

            $("#show-cart").on("change", ".item-count", function (event) {
                var name = $(this).attr("data-name");
                var count = Number($(this).val());
                shoppingCart.setCountForItem(name, count);
                displayCart();
            });


            displayCart();

        </script>

    </section>
</asp:Content>

