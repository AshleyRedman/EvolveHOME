<%@ Page Title="Product Collections" Language="C#" MasterPageFile="~/StylePage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <section class="collections">
        <figure id="collection-1">
            <a href="Collections/LivingSpace.aspx">
                <figcaption>Living Space</figcaption>
            </a>
        </figure>
        <a href="Collections/Bedroom.aspx"><figure id="collection-2">
            <figcaption>Bedroom</figcaption>
        </figure></a>
        <figure id="collection-3">
            <figcaption>Kitchen</figcaption>
        </figure></a>
    </section>
    <section class="collections">
        <a href="Collections/Bathroom.aspx"><figure id="collection-4">
            <figcaption>Bathroom</figcaption>
        </figure></a>
        <a href="Collections/Garden.aspx"><figure id="collection-5">
            <figcaption>Garden</figcaption>
        </figure></a>
        <a href="Collections/Office.aspx"><figure id="collection-6">
            <figcaption>Office</figcaption>
        </figure></a>
    </section>




</asp:Content>

