<%@ Page Title="Your Basket" Language="C#" MasterPageFile="LoggedIm.master" %>
<%@ Import Namespace="ClassControlLib" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {



    }




</script>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <section>
        <h2>Your Basket</h2>

        <div class="cart-display">
            <table id="cart-title">
             <tr>
                <td>Product</td>
                <td>Quantity</td>
                <td>Add 1</td>
                <td>Remove 1</td>
                <td>remove Alll</td>
             </tr>
            </table>
            <br />
            <table id="show-cart">
            </table>
            <br />
            <br />
            <button id="clear-cart">Clear Cart</button>
            <br />
            <br />
            <div>You have <span id="count-cart">X</span> items in your cart</div>
            <br />
            <div>Total Cart:£<span id="total-cart"></span></div>
        </div>
        


        <!-- Cart script needs to placed here to allow the inpage functions to reference -->
        <script src="../js/shoppingCart.js"></script>


        <!-- The below functions allow the functionality to display and add functionality to the onpage buttons -->
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

                        + "<td>" + " <button class='plus-item' data-name='"
                        + cartArray[i].name + "'>+</button> </td>"

                        + "<td>" + " <button class='subtract-item' data-name='"
                        + cartArray[i].name + "'>-</button> </td>"

                        + "<td>" + " <button class='delete-item' data-name='"
                        + cartArray[i].name + "'>Remove</button> </td>"
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

