<%@ Page Title="Your Basket" Language="C#" MasterPageFile="LoggedIm.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <section id="BasketDisplay">
        <h2>Your Basket</h2>
        <table>
            <tr>
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Image</th>
                <th>Description</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Remove</th>
            </tr>
            <tr>
                <td>00000001</td>
                <td>Zara Cuddle Chair</td>
                <td>
                    <img src="../media/img/product/1sofa.jpg" alt="sofa1" />
                </td>
                <td>
                    Add a touch of luxury
                    to your home with the
                    beautifully crafted Zara
                    Cuddle Chair.</td>
                <td>£349.99</td>
                <td>
                    <input type="number" value="1" />
                </td>
                <td>
                    <a href="#">
                        <img src="../media/img/icons/bin.svg" alt="bin icon" id="binIcon" />
                    </a>
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>

        </table>
        <h4>Total: £349.99 </h4>
        <a href="ChooseDelivery.aspx" class="ContinueButton"><div>Continue to delivery...</div></a>

    </section>

</asp:Content>

