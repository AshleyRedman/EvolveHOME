<%@ Page Title="Checkout" Language="C#" MasterPageFile="~/StylePage.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <section id="Orderreview">
        <section>
            <h3>Review Your Order</h3>
            <table>
                <tr>
                    <th>OrderID</th>
                    <th>Products</th>
                    <th>Delivery Type</th>
                    <th>Delivery Price</th>
                </tr>
                <tr>
                    <td>01</td>
                    <td>
                        <ul>
                            <li>Zara Cuddle Chair</li>
                        </ul>
                    </td>
                    <td>Standard Delivery</td>
                    <td>Free</td>
                </tr>
            </table>
        </section>
        <section>
            <h3>Payment</h3>
            <div>
                <aside id="pay-title">
                    <h3>Payment Details</h3>
                </aside>
                <article id="CardNumber">
                    Card Number<br /> 
                    <input type="text" value="" placeholder="Valid Card Number" id="cardNumber" />
                </article>
                <article id="ExpirDate">
                    Expiration Date<br />
                    <input type="text" value="" placeholder="Expiration Date" />
                </article>
                <article id="CVcode">
                    CV Code<br />
                    <input type="text" value="" placeholder="CVC Code"/><br />
                </article>
                <a href="Default.aspx"><input type="submit" value="Pay" id="SubmitPay" /></a>
                <img src="media/img/icons/cards.png" alt="card icons" id="card-icons" />
            </div>
        </section>
        

    </section>
</asp:Content>

