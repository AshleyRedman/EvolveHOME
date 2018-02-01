<%@ Page Title="All Products" Language="C#" MasterPageFile="~/StylePage.master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EvolveConnectionString"].ConnectionString);
        {
            /*
             * Here we shall collection the product name, price and image 
             * 
             */
            //product 1
            string p1 = "select Name from tblHomeProducts where ProductID = 20";
            string p1Price = "select Price from tblHomeProducts where ProductID = 20";
            string p1Img = "select ImagePath from tblHomeProducts where ProductID = 20";
            //product 2
            string p2 = "select Name from tblHomeProducts where ProductID = 22";
            string p2Price = "select Price from tblHomeProducts where ProductID = 22";
            string p2Img = "select ImagePath from tblHomeProducts where ProductID = 22";
            //product 3
            string p3 = "select Name from tblHomeProducts where ProductID = 23";
            string p3Price = "select Price from tblHomeProducts where ProductID = 23";
            string p3Img = "select ImagePath from tblHomeProducts where ProductID = 23";
            //product 4
            string p4 = "select Name from tblHomeProducts where ProductID = 26";
            string p4Price = "select Price from tblHomeProducts where ProductID = 26";
            string p4Img = "select ImagePath from tblHomeProducts where ProductID = 26";
            //product 5
            string p5 = "select Name from tblHomeProducts where ProductID = 27";
            string p5Price = "select Price from tblHomeProducts where ProductID = 27";
            string p5Img = "select ImagePath from tblHomeProducts where ProductID = 27";
            //product 6
            string p6 = "select Name from tblHomeProducts where ProductID = 28";
            string p6Price = "select Price from tblHomeProducts where ProductID = 28";
            string p6Img = "select ImagePath from tblHomeProducts where ProductID = 28";
            // product 7
            string p7 = "select Name from tblHomeProducts where ProductID = 29";
            string p7Price = "select Price from tblHomeProducts where ProductID = 29";
            string p7Img = "select ImagePath from tblHomeProducts where ProductID = 29";
            //product 8
            string p8 = "select Name from tblHomeProducts where ProductID = 30";
            string p8Price = "select Price from tblHomeProducts where ProductID = 30";
            string p8Img = "select ImagePath from tblHomeProducts where ProductID = 30";
            //product 9
            string p9 = "select Name from tblHomeProducts where ProductID = 36";
            string p9Price = "select Price from tblHomeProducts where ProductID = 36";
            string p9Img = "select ImagePath from tblHomeProducts where ProductID = 36";
            //product 10
            string p10 = "select Name from tblHomeProducts where ProductID = 37";
            string p10Price = "select Price from tblHomeProducts where ProductID = 37";
            string p10Img = "select ImagePath from tblHomeProducts where ProductID = 37";
            //product 11
            string p11 = "select Name from tblHomeProducts where ProductID = 38";
            string p11Price = "select Price from tblHomeProducts where ProductID = 38";
            string p11Img = "select ImagePath from tblHomeProducts where ProductID = 38";
            //product 12
            string p12 = "select Name from tblHomeProducts where ProductID = 39";
            string p12Price = "select Price from tblHomeProducts where ProductID = 39";
            string p12Img = "select ImagePath from tblHomeProducts where ProductID = 39";
            //product 13
            string p13 = "select Name from tblHomeProducts where ProductID = 41";
            string p13Price = "select Price from tblHomeProducts where ProductID = 41";
            string p13Img = "select ImagePath from tblHomeProducts where ProductID = 41";
            //product 14
            string p14 = "select Name from tblHomeProducts where ProductID = 43";
            string p14Price = "select Price from tblHomeProducts where ProductID = 43";
            string p14Img = "select ImagePath from tblHomeProducts where ProductID = 43";
            //product 15
            string p15 = "select Name from tblHomeProducts where ProductID = 44";
            string p15Price = "select Price from tblHomeProducts where ProductID = 44";
            string p15Img = "select ImagePath from tblHomeProducts where ProductID = 44";
            //product 16
            string p16 = "select Name from tblHomeProducts where ProductID = 45";
            string p16Price = "select Price from tblHomeProducts where ProductID = 45";
            string p16Img = "select ImagePath from tblHomeProducts where ProductID = 45";
            //product 17
            string p17 = "select Name from tblHomeProducts where ProductID = 46";
            string p17Price = "select Price from tblHomeProducts where ProductID = 46";
            string p17Img = "select ImagePath from tblHomeProducts where ProductID = 46";
            //product 18
            string p18 = "select Name from tblHomeProducts where ProductID = 48";
            string p18Price = "select Price from tblHomeProducts where ProductID = 48";
            string p18Img = "select ImagePath from tblHomeProducts where ProductID = 48";


            /*
             * Here we will run the var agains the DB get the data
             * 
             */
            //p1
            SqlCommand showp1 = new SqlCommand(p1, con);
            SqlCommand showp1Price = new SqlCommand(p1Price, con);
            SqlCommand showp1Img = new SqlCommand(p1Img, con);
            //p2
            SqlCommand showp2 = new SqlCommand(p2, con);
            SqlCommand showp2Price = new SqlCommand(p2Price, con);
            SqlCommand showp2Img = new SqlCommand(p2Img, con);
            //p3
            SqlCommand showp3 = new SqlCommand(p3, con);
            SqlCommand showp3Price = new SqlCommand(p3Price, con);
            SqlCommand showp3Img = new SqlCommand(p3Img, con);
            //p4
            SqlCommand showp4 = new SqlCommand(p4, con);
            SqlCommand showp4Price = new SqlCommand(p4Price, con);
            SqlCommand showp4Img = new SqlCommand(p4Img, con);
            //p5
            SqlCommand showp5 = new SqlCommand(p5, con);
            SqlCommand showp5Price = new SqlCommand(p5Price, con);
            SqlCommand showp5Img = new SqlCommand(p5Img, con);
            //p6
            SqlCommand showp6 = new SqlCommand(p6, con);
            SqlCommand showp6Price = new SqlCommand(p6Price, con);
            SqlCommand showp6Img = new SqlCommand(p6Img, con);
            //p7
            SqlCommand showp7 = new SqlCommand(p7, con);
            SqlCommand showp7Price = new SqlCommand(p7Price, con);
            SqlCommand showp7Img = new SqlCommand(p7Img, con);
            //p8
            SqlCommand showp8 = new SqlCommand(p8, con);
            SqlCommand showp8Price = new SqlCommand(p8Price, con);
            SqlCommand showp8Img = new SqlCommand(p8Img, con);
            //p9
            SqlCommand showp9 = new SqlCommand(p9, con);
            SqlCommand showp9Price = new SqlCommand(p9Price, con);
            SqlCommand showp9Img = new SqlCommand(p9Img, con);
            //p10
            SqlCommand showp10 = new SqlCommand(p10, con);
            SqlCommand showp10Price = new SqlCommand(p10Price, con);
            SqlCommand showp10Img = new SqlCommand(p10Img, con);
            //p11
            SqlCommand showp11 = new SqlCommand(p11, con);
            SqlCommand showp11Price = new SqlCommand(p11Price, con);
            SqlCommand showp11Img = new SqlCommand(p11Img, con);
            //p12
            SqlCommand showp12 = new SqlCommand(p12, con);
            SqlCommand showp12Price = new SqlCommand(p12Price, con);
            SqlCommand showp12Img = new SqlCommand(p12Img, con);
            //p13
            SqlCommand showp13 = new SqlCommand(p13, con);
            SqlCommand showp13Price = new SqlCommand(p13Price, con);
            SqlCommand showp13Img = new SqlCommand(p13Img, con);
            //p14
            SqlCommand showp14 = new SqlCommand(p14, con);
            SqlCommand showp14Price = new SqlCommand(p14Price, con);
            SqlCommand showp14Img = new SqlCommand(p14Img, con);
            //p15
            SqlCommand showp15 = new SqlCommand(p15, con);
            SqlCommand showp15Price = new SqlCommand(p15Price, con);
            SqlCommand showp15Img = new SqlCommand(p15Img, con);
            //p16
            SqlCommand showp16 = new SqlCommand(p16, con);
            SqlCommand showp16Price = new SqlCommand(p16Price, con);
            SqlCommand showp16Img = new SqlCommand(p16Img, con);
            //p17
            SqlCommand showp17 = new SqlCommand(p17, con);
            SqlCommand showp17Price = new SqlCommand(p17Price, con);
            SqlCommand showp17Img = new SqlCommand(p17Img, con);
            //p18
            SqlCommand showp18 = new SqlCommand(p18, con);
            SqlCommand showp18Price = new SqlCommand(p18Price, con);
            SqlCommand showp18Img = new SqlCommand(p18Img, con);

            // Open the db connection
            con.Open();

            /*
             * Here we will set the result of the query directly to the valeu of the lables and img url
             * 
             */
            //p1
            lblp1.Text = showp1.ExecuteScalar().ToString();
            lblp1Price.Text = showp1Price.ExecuteScalar().ToString();
            imgP1.ImageUrl = showp1Img.ExecuteScalar().ToString();
            //p2
            lblp2.Text = showp2.ExecuteScalar().ToString();
            lblp2Price.Text = showp2Price.ExecuteScalar().ToString();
            imgP2.ImageUrl = showp2Img.ExecuteScalar().ToString();
            //p3
            lblp3.Text = showp3.ExecuteScalar().ToString();
            lblp3Price.Text = showp3Price.ExecuteScalar().ToString();
            //p4
            lblp4.Text = showp4.ExecuteScalar().ToString();
            lblp4Price.Text = showp4Price.ExecuteScalar().ToString();
            imgP4.ImageUrl = showp4Img.ExecuteScalar().ToString();
            //p5
            lblp5.Text = showp5.ExecuteScalar().ToString();
            lblp5Price.Text = showp5Price.ExecuteScalar().ToString();
            imgP5.ImageUrl = showp5Img.ExecuteScalar().ToString();
            //p6
            lblp6.Text = showp6.ExecuteScalar().ToString();
            lblp6Price.Text = showp6Price.ExecuteScalar().ToString();
            imgP6.ImageUrl = showp6Img.ExecuteScalar().ToString();
            //p7
            lblp7.Text = showp7.ExecuteScalar().ToString();
            lblp7Price.Text = showp7Price.ExecuteScalar().ToString();
            imgP7.ImageUrl = showp7Img.ExecuteScalar().ToString();
            //p8
            lblp8.Text = showp8.ExecuteScalar().ToString();
            lblp8Price.Text = showp8Price.ExecuteScalar().ToString();
            imgP8.ImageUrl = showp8Img.ExecuteScalar().ToString();
            //p9
            lblp9.Text = showp9.ExecuteScalar().ToString();
            lblp9Price.Text = showp9Price.ExecuteScalar().ToString();
            imgP9.ImageUrl = showp9Img.ExecuteScalar().ToString();
            //p10
            lblp10.Text = showp10.ExecuteScalar().ToString();
            lblp10Price.Text = showp10Price.ExecuteScalar().ToString();
            imgP10.ImageUrl = showp10Img.ExecuteScalar().ToString();
            //p11
            lblp11.Text = showp11.ExecuteScalar().ToString();
            lblp11Price.Text = showp11Price.ExecuteScalar().ToString();
            imgP11.ImageUrl = showp11Img.ExecuteScalar().ToString();
            //p12
            lblp12.Text = showp12.ExecuteScalar().ToString();
            lblp12Price.Text = showp12Price.ExecuteScalar().ToString();
            imgP12.ImageUrl = showp12Img.ExecuteScalar().ToString();
            //p13
            lblp13.Text = showp13.ExecuteScalar().ToString();
            lblp13Price.Text = showp13Price.ExecuteScalar().ToString();
            imgP13.ImageUrl = showp13Img.ExecuteScalar().ToString();
            //p14
            lblp14.Text = showp14.ExecuteScalar().ToString();
            lblp14Price.Text = showp14Price.ExecuteScalar().ToString();
            imgP14.ImageUrl = showp14Img.ExecuteScalar().ToString();
            //p15
            lblp15.Text = showp15.ExecuteScalar().ToString();
            lblp15Price.Text = showp15Price.ExecuteScalar().ToString();
            imgP15.ImageUrl = showp15Img.ExecuteScalar().ToString();
            //p16
            lblp16.Text = showp16.ExecuteScalar().ToString();
            lblp16Price.Text = showp16Price.ExecuteScalar().ToString();
            imgP16.ImageUrl = showp16Img.ExecuteScalar().ToString();
            //p17
            lblp17.Text = showp17.ExecuteScalar().ToString();
            lblp17Price.Text = showp17Price.ExecuteScalar().ToString();
            imgP17.ImageUrl = showp17Img.ExecuteScalar().ToString();
            //p18
            lblp18.Text = showp18.ExecuteScalar().ToString();
            lblp18Price.Text = showp18Price.ExecuteScalar().ToString();
            imgP18.ImageUrl = showp18Img.ExecuteScalar().ToString();


            // Close the DB connection
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

        <table id="AllProductDisplay">
            <tr> <!-- row 1 -->
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label ID="lblp1" runat="server"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp1Price"></asp:Label></h5>
                        <asp:Image ID="imgP1" runat="server" />
                        <a href="Products/StandardSofa.aspx" class="ViewButton">View</a>
                    </div> <!-- p1 -->
                </td>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp2"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp2Price"></asp:Label></h5>
                        <asp:Image ID="imgP2" runat="server" />
                        <a href="Products/BiggerSofa.aspx" class="ViewButton">View</a>
                    </div> <!-- p2 -->
                </td>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp3"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp3Price"></asp:Label></h5>
                        <img src="media/img/product/3sofa.jpg" alt="sofa1" />
                        <a href="Products/BiggestSofa.aspx" class="ViewButton">View</a>
                    </div> <!-- p3 -->
                </td>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp4"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp4Price"></asp:Label></h5>
                        <asp:Image ID="imgP4" runat="server" />
                        <a href="Products/GreyLegSupport.aspx" class="ViewButton">View</a>
                    </div> <!-- p4 -->
                </td>
            </tr>
            <tr> <!-- row 2 -->
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp5"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp5Price"></asp:Label></h5>
                        <asp:Image ID="imgP5" runat="server" />
                        <a href="#" class="ViewButton">View</a>
                    </div> <!-- p5 -->
                </td>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp6"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp6Price"></asp:Label></h5>
                        <asp:Image ID="imgP6" runat="server" />
                        <a href="#" class="ViewButton">View</a>
                    </div> <!-- p6 -->
                </td>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp7"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp7Price"></asp:Label></h5>
                        <asp:Image ID="imgP7" runat="server" />
                        <a href="#" class="ViewButton">View</a>
                    </div> <!-- p7 -->
                </td>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp8"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp8Price"></asp:Label></h5>
                        <asp:Image ID="imgP8" runat="server" />
                        <a href="#" class="ViewButton">View</a>
                    </div> <!-- p8 -->
                </td>
            </tr>
            <tr> <!-- row 3 -->
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp9"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp9Price"></asp:Label></h5>
                        <asp:Image ID="imgP9" runat="server" />
                        <a href="#" class="ViewButton">View</a>
                    </div> <!-- p9 -->
                </td>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp10"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp10Price"></asp:Label></h5>
                        <asp:Image ID="imgP10" runat="server" />
                        <a href="#" class="ViewButton">View</a>
                    </div> <!-- p10 -->
                </td>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp11"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp11Price"></asp:Label></h5>
                        <asp:Image ID="imgP11" runat="server" />
                        <a href="#" class="ViewButton">View</a>
                    </div> <!-- p11 -->
                </td>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp12"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp12Price"></asp:Label></h5>
                        <asp:Image ID="imgP12" runat="server" />
                        <a href="#" class="ViewButton">View</a>
                    </div> <!-- p12 -->
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp13"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp13Price"></asp:Label></h5>
                        <asp:Image ID="imgP13" runat="server" />
                        <a href="#" class="ViewButton">View</a>
                    </div> <!-- p13 -->
                </td>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp14"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp14Price"></asp:Label></h5>
                        <asp:Image ID="imgP14" runat="server" />
                        <a href="#" class="ViewButton">View</a>
                    </div> <!-- p14 -->
                </td>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp15"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp15Price"></asp:Label></h5>
                        <asp:Image ID="imgP15" runat="server" />
                        <a href="#" class="ViewButton">View</a>
                    </div> <!-- p15 -->
                </td>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp16"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp16Price"></asp:Label></h5>
                        <asp:Image ID="imgP16" runat="server" />
                        <a href="#" class="ViewButton">View</a>
                    </div> <!-- p16 -->
                </td>
            </tr> <!-- row 4 -->
            <tr>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp17"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp17Price"></asp:Label></h5>
                        <asp:Image ID="imgP17" runat="server" />
                        <a href="#" class="ViewButton">View</a>
                    </div> <!-- p17 -->
                </td>
                <td>
                    <div>
                        <h4 class="LabelTitle"><asp:Label runat="server" ID="lblp18"></asp:Label></h4>
                        <h5 class="PriceLabel">£<asp:Label runat="server" ID="lblp18Price"></asp:Label></h5>
                        <asp:Image ID="imgP18" runat="server" />
                        <a href="#" class="ViewButton">View</a>
                    </div> <!-- p18 -->
                </td>
                <td>
                    <div>
                        <!-- new item here -->
                    </div> <!-- p19 -->
                </td> 
                <td>
                    <div>
                        <!-- new item here -->
                    </div> <!-- p20 -->
                </td>
            </tr> <!-- row 5 -->
        </table>
    </section>
</asp:Content>

