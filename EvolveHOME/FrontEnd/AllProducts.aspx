<%@ Page Title="All Products" Language="C#" MasterPageFile="~/StylePage.master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EvolveConnectionString"].ConnectionString);
        {
            string p1 = "select Name from tblHomeProducts where ProductID = 20";
            string p1Price = "select Price from tblHomeProducts where ProductID = 20";
            string p2 = "select Name from tblHomeProducts where ProductID = 22";
            string p2Price = "select Price from tblHomeProducts where ProductID = 22";
            string p3 = "select Name from tblHomeProducts where ProductID = 23";
            string p3Price = "select Price from tblHomeProducts where ProductID = 23";
            string p4 = "select Name from tblHomeProducts where ProductID = 26";
            string p4Price = "select Price from tblHomeProducts where ProductID = 26";


            SqlCommand showp1 = new SqlCommand(p1, con);
            SqlCommand showp1Price = new SqlCommand(p1Price, con);
            SqlCommand showp2 = new SqlCommand(p2, con);
            SqlCommand showp2Price = new SqlCommand(p2Price, con);
            SqlCommand showp3 = new SqlCommand(p3, con);
            SqlCommand showp3Price = new SqlCommand(p3Price, con);
            SqlCommand showp4 = new SqlCommand(p4, con);
            SqlCommand showp4Price = new SqlCommand(p4Price, con);



            con.Open();

            lblp1.Text = showp1.ExecuteScalar().ToString();
            lblp1Price.Text = showp1Price.ExecuteScalar().ToString();
            lblp2.Text = showp2.ExecuteScalar().ToString();
            lblp2Price.Text = showp2Price.ExecuteScalar().ToString();
            lblp3.Text = showp3.ExecuteScalar().ToString();
            lblp3Price.Text = showp3Price.ExecuteScalar().ToString();
            lblp4.Text = showp4.ExecuteScalar().ToString();
            lblp4Price.Text = showp4Price.ExecuteScalar().ToString();

            con.Close();


        }
    }


</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <section>
        <h2><br /></h2>
    </section>
    <section id="filter-bar">
        <h3>Refine your search</h3>
        <ul id="filter-list">
            <li>
                <select>
                    <option value="" disabled selected hidden>Type</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                </select>
            </li>
            <li>
                <select>
                    <option value="" disabled selected hidden>Colour</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                </select>
            </li>
            <li>
                <select>
                    <option value="" disabled selected hidden>Size</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                </select>
            </li>
            <li>
                <select>
                    <option value="" disabled selected hidden>Price</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                    <option value="value">Option</option>
                </select>
            </li>
        </ul>
    </section>
    <section id="AllProducts">


        


        <table>
            <tr>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label ID="lblp1" runat="server"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp1Price"></asp:Label></h5>
                        <img src="media/img/product/1sofa.jpg" alt="sofa1" />
                        <a href="Products/StandardSofa.aspx" class="ViewButton">View</a>
                    </div>
                </td>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp2"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp2Price"></asp:Label></h5>
                        <img src="media/img/product/2sofa.jpg" alt="sofa1" />
                        <a href="Products/BiggerSofa.aspx" class="ViewButton">View</a>
                    </div>
                </td>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp3"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp3Price"></asp:Label></h5>
                        <img src="media/img/product/3sofa.jpg" alt="sofa1" />
                        <a href="Products/BiggestSofa.aspx" class="ViewButton">View</a>
                    </div>
                </td>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp4"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp4Price"></asp:Label></h5>
                        <img src="media/img/product/4sofa.jpg" alt="sofa1" />
                        <a href="Products/GreyLegSupport.aspx" class="ViewButton">View</a>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <h4>Title</h4>
                        <img src="media/img/product/sofa5.jpg" alt="sofa1" />
                        <a href="#" class="ViewButton">View</a>
                    </div>
                </td>
                <td><div>
                        <h4>Title</h4>
                        <img src="media/img/product/sofa6.jpg" alt="sofa1" />
                        <a href="#" class="ViewButton">View</a>
                    </div></td>
                <td><div>
                        <h4>Title</h4>
                        <img src="media/img/product/ugly.jpg" alt="sofa1" />
                        <a href="#" class="ViewButton">View</a>
                    </div></td>
                <td><div>
                        <h4>Title</h4>
                        <img src="media/img/product/draw1.jpg" alt="sofa1" />
                        <a href="#" class="ViewButton">View</a>
                    </div></td>
            </tr>
            <tr>
                <td>
                    <div>
                        <h4>Title</h4>
                        <img src="media/img/product/draw2.jpg" alt="sofa1" />
                        <a href="#" class="ViewButton">View</a>
                    </div>
                </td>
                <td><div>
                        <h4>Title</h4>
                        <img src="media/img/product/draw3.jpg" alt="sofa1" />
                        <a href="#" class="ViewButton">View</a>
                    </div></td>
                <td><div>
                        <h4>Title</h4>
                        <img src="media/img/product/cab1.jpg" alt="sofa1" />
                        <a href="#" class="ViewButton">View</a>
                    </div></td>
                <td><div>
                        <h4>Title</h4>
                        <img src="media/img/product/cab2.jpg" alt="sofa1" />
                        <a href="#" class="ViewButton">View</a>
                    </div></td>
            </tr>
            <tr>
                <td>
                    <div>
                        <h4>Title</h4>
                        <img src="media/img/product/cab3.jpg" alt="sofa1" />
                        <a href="#" class="ViewButton">View</a>
                    </div>
                </td>
                <td><div>
                        <h4>Title</h4>
                        <img src="media/img/product/char1.jpg" alt="sofa1" />
                        <a href="#" class="ViewButton">View</a>
                    </div></td>
                <td><div>
                        <h4>Title</h4>
                        <img src="media/img/product/char2.jpg" alt="sofa1" />
                        <a href="#" class="ViewButton">View</a>
                    </div></td>
                <td><div>
                        <h4>Title</h4>
                        <img src="media/img/product/char3.jpg" alt="sofa1" />
                        <a href="#" class="ViewButton">View</a>
                    </div></td>
            </tr>
            <tr>
                <td>
                    <div>
                        <h4>Title</h4>
                        <img src="media/img/product/char4.jpg" alt="sofa1" />
                        <a href="#" class="ViewButton">View</a>
                    </div>
                </td>
                <td><div>
                        <h4>Title</h4>
                        <img src="media/img/product/1sofa.jpg" alt="sofa1" />
                        <a href="#" class="ViewButton">View</a>
                    </div></td>
                <td><div>
                        <h4>Title</h4>
                        <img src="media/img/product/1sofa.jpg" alt="sofa1" />
                        <a href="#" class="ViewButton">View</a>
                    </div></td>
                <td><div>
                        <h4>Title</h4>
                        <img src="media/img/product/1sofa.jpg" alt="sofa1" />
                        <a href="#" class="ViewButton">View</a>
                    </div></td>
            </tr>
        </table>
    </section>
</asp:Content>

