<%@ Page Title="Home" Language="C#" MasterPageFile="~/StylePage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <section id="hero">
        <div>
            <h1>Text Here</h1>
            <h4>Lorem ipsum dolor sit amet, lectus vitae faucibus,
                at diam donec, pede velit sapien, dolor sapien 
                tristique convallis. Orci pharetra vel placerat 
                gravida, dolor odio quia eleifend eu, diam a praesent
                gravida bibendum.
            </h4>
        </div>
    </section>
    <h2 id="feature-title">Featured Items</h2>
    <section id="featured-items">
        <article class="featured">
            <img src="media/img/product/1sofa.jpg" alt="Alternate Text" />
            <p>
               Lorem ipsum dolor sit amet, lectus vitae faucibus,
               at diam donec, pede velit sapien, dolor sapien 
               tristique convallis.
            </p>
            <a href="#" class="ViewButton">View</a>
        </article>
        <article class="featured">
            <img src="media/img/product/2sofa.jpg" alt="Alternate Text" />
            <p>
               Lorem ipsum dolor sit amet, lectus vitae faucibus,
               at diam donec, pede velit sapien, dolor sapien 
               tristique convallis.
            </p>
            <a href="#" class="ViewButton">View</a>
        </article>
        <article class="featured">
            <img src="media/img/product/3sofa.jpg" alt="Alternate Text" /><p>
               Lorem ipsum dolor sit amet, lectus vitae faucibus,
               at diam donec, pede velit sapien, dolor sapien 
               tristique convallis.
            </p>
            <a href="#" class="ViewButton">View</a>
        </article>
    </section>
    <section id="offers">
        <article class="offer-box">
            <img src="media/img/icons/gift.svg" alt="gift" />
            <h3>Gift options available</h3>
        </article>
        <article class="offer-box">
            <img src="media/img/icons/delivery.svg" alt="delivery" />
            <h3>Free and Fast delivery!</h3>    
        </article>
        <article class="offer-box">
            <img src="media/img/icons/candle.svg" alt="candle" />
            <h3>Hundrens of products</h3>
        </article>
        <article class="offer-box">
            <img src="media/img/icons/many.svg" alt="Many People" />
            <h3>Options for everyone</h3>
        </article>
    </section>
</asp:Content>

