<%@ Page Title="" Language="C#" MasterPageFile="~/StylePage.master" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h2>Select Your Delivery...</h2>
    <section id="ChooseDelivery">
        <section>
            <h3>Select Your Delivery Type</h3>
            <div>
                <ul>
                    <li>
                        <input type="radio" name="delivery" value="Standard Delivery" checked="checked"/>Standard Delivery <strong>Free</strong>
                    </li>
                    <li>
                        <input type="radio" name="delivery" value="" /><del>Express Delivery</del> (Not Available)
                    </li>
                </ul>
            </div>
        </section>
        <section>
            <h3>Select Your Delivery Date</h3>
            <div>
                <h6>Click to select date...</h6>
                <input type="date" value="" />
            </div>
        </section>
        <section>
            <h3>Confirm &amp; Continue...</h3>
            <div>
                <a href="Checkout.aspx">
                    <div>Review Order</div>
                </a>
            </div>
        </section>
    </section>



</asp:Content>

