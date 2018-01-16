<%@ Page Title="" Language="C#" MasterPageFile="~/StylePage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <section>
        <h2>Zara Cuddle Chair</h2>
    </section>
    <section id="ProductPreview">
        <figure>
            <img src="media/img/product/1sofa.jpg" alt="sofa1" />
            <figcaption>

            </figcaption>
        </figure>
        <section class="ProductMini">
            <article>
                <img src="media/img/product/1sofa.jpg" alt="sofa1" />
            </article>
            <article>
                <img src="media/img/product/AllProducts/1sofa4.jpg" alt="sofa1" />
            </article>
            <article>
                <img src="media/img/product/AllProducts/1sofa3.jpg" alt="sofa1" />
            </article>
            <article>
                <img src="media/img/product/AllProducts/1sofa2.jpg" alt="sofa1" />
            </article>
        </section>
    </section>
    <aside id="ProductDetail">
        <div class="ProductSpec">
            <h4>Features</h4>
            <ul>
                <li>Cushions included for added comfort</li>
                <li>Stylish and contemporary design</li>
                <li>Complements a wide variety of interior decor</li>
            </ul>
            <h4>Information</h4>
            <p>
                Add a touch of luxury to your
                 home with the beautifully crafted
                 Zara Cuddle Chair. This expertly
                 designed sofa will comfortably seat
                 two people on the luxurious foam 
                filled seats. Its elegant curved shape
                 and button detailing make the Zara 
                Cuddle Chair a great option for those 
                seeking comfort and timeless style.
            </p>
            <h4>Specification</h4>
            <ul>
                <li>Material: Eucalyptus frame / Linen upholstery</li>
                <li>Assembly Required: Yes</li>
                <li>Weight: 25.7kg</li>
                <li>Armrest Depth: 86cm</li>
                <li>Filling: Foam</li>
                <li>Armrest Height: 60cm</li>
                <li>Armrest Width: 10cm</li>
                <li>Overall Dimensions : H82 x W130 x D89cm</li>
                <li>Seat Dimensions: H44 x W110 x D58cm</li>
            </ul>
        </div>
        <div class="ProductPurchase">
            <h4>Price: £349.99</h4>
            <a href="Basket.aspx"><div>Add To Basket</div></a>
        </div>
    </aside>
    <section class="SimilarProducts">
        <h5>Similar Products</h5>
        <div>
            <article>
                <img src="media/img/product/1sofa.jpg" alt="sofa1" />
            </article>
            <article>
                <img src="media/img/product/2sofa.jpg" alt="sofa1" />
            </article>
            <article>
                <img src="media/img/product/3sofa.jpg" alt="sofa1" />
            </article>
            <article>
                <img src="media/img/product/4sofa.jpg" alt="sofa1" />
            </article>
            <article>
                <img src="media/img/product/sofa5.jpg" alt="sofa1" />
            </article>
            <article>
                <img src="media/img/product/sofa6.jpg" alt="sofa1" />
            </article>
        </div>
    </section>
</asp:Content>

