<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/StylePage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <section id="contact-area">
        <h3>Contact Details</h3>
        <div>
            <ul>
                <li>
                    <img src="media/img/icons/telephone.svg" alt="phone icon" />
                     0116 386 4067
                </li>
                <li>
                    <img src="media/img/icons/email.svg" alt="email icon" />
                     info@evolvehome.co.uk
                </li>

                <li>
                    Name:
                    <input type="text" value="" placeholder="..." />
                </li>
                <li>
                    Email:
                    <input type="text" value="" placeholder="..." />
                </li>
                <li>
                    Message:
                    <textarea name="Message" cols="40" rows="10" placeholder="..."></textarea>
                </li>
                <li>
                    <input type="submit" value="Send" id="send-icon" />
                </li>
            </ul>
        </div>
    </section>
</asp:Content>

