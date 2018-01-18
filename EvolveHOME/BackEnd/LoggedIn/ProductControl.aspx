<%@ Page Title="Product Control" Language="C#" MasterPageFile="~/LoggedIn/BackEndStyle.master" %>


<script runat="server">
    
    List<Int32> NewHomeProductIDs;

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        ClassControlLib.clsHomeProductCollection HomeProduct = new ClassControlLib.clsHomeProductCollection();
        
        //Validation Here
        Boolean OK = HomeProduct.ThisHomeProduct.Valid(txtName.Text, Convert.ToInt32(txtPrice.Text), txtType.Text, txtCollection.Text, txtDescription.Text, txtDimentions.Text);
        // Set variables for the text elements
        string Name = txtName.Text;
        Int32 Price = Convert.ToInt32(txtPrice.Text);
        string Type = txtType.Text;
        string Collection = txtCollection.Text;
        string Description = txtDescription.Text;
        string Dimentions = txtDimentions.Text;
        // Displayed reponse label
        //string AddLabel = lblAdd.Text;
        //If the data is OK, add it to the object
        if (OK == true)
        {
            HomeProduct.ThisHomeProduct.Name = Name;
            HomeProduct.ThisHomeProduct.Price = Price;
            HomeProduct.ThisHomeProduct.Type = Type;
            HomeProduct.ThisHomeProduct.Collection = Collection;
            HomeProduct.ThisHomeProduct.Description = Description;
            HomeProduct.ThisHomeProduct.Dimentions = Dimentions;
            HomeProduct.Add();
            //Set label to show success message
            lblAdd.Text = "New Product Has Been Added";

        }
        else
        {
            // Display an error
            lblAdd.Text = "Please Try Again";
        }
    }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="content-area">
        <section class="page-title">
            <h2>Product Control</h2>
            <h4>Logged In:  <span>Admin Name</span></h4>
        </section>
        <section class="obj-control">
            <aside>
                <article class="obj-add">
                    <h4>Add a New Product</h4>
                    <form runat="server">
                    <table class="product-form" id="add-form">
                        <tr>
                            <td>Product Name</td>
                            <td>
                                    <asp:TextBox ID="txtName" runat="server" class="TextBox" placeholder="Product Name"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Product Price</td>
                            <td>
                                    <asp:TextBox ID="txtPrice" runat="server" class="TextBox" placeholder="Price"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Product Type</td>
                            <td>
                                <asp:DropDownList ID="txtType" runat="server">
                                    <asp:ListItem Selected="True">Select a Product Type</asp:ListItem>
                                    <asp:ListItem>Sofa</asp:ListItem>
                                    <asp:ListItem>Chair</asp:ListItem>
                                    <asp:ListItem>Fridge</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>Product Collection</td>
                            <td>
                                <asp:DropDownList ID="txtCollection" runat="server">
                                    <asp:ListItem Selected="True">Select a Product Collection</asp:ListItem>
                                    <asp:ListItem>Living Space</asp:ListItem>
                                    <asp:ListItem>Bedroom</asp:ListItem>
                                    <asp:ListItem>Office</asp:ListItem>
                                    <asp:ListItem>Garden</asp:ListItem>
                                    <asp:ListItem>Kitchen</asp:ListItem>
                                    <asp:ListItem>Bathroom</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>Description</td>
                            <td>
                                <asp:TextBox ID="txtDescription" Columns="30" Rows="3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Dimentions</td>
                            <td>
                                <asp:TextBox ID="txtDimentions" runat="server" placeholder="e.g H,W,D"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add New" class="button" />
                    <asp:Label ID="lblAdd" CssClass="label" runat="server">Message</asp:Label>
                    </form>
                </article>


                <article class="obj-edit">
                    <h4>Edit a Current Product</h4>
                    <table class="product-form" id="edit-form">
                        <tr>
                            <td>Enter Product Itentifier</td>
                            <td>
                                <input type="text" value="" placeholder="Item ID" />
                                <input type="submit" value="Find" />
                            </td>
                        </tr>
                        <tr>
                            <td>Product Name</td>
                            <td>
                                <input type="text" value="" placeholder="Product Name" />
                            </td>
                        </tr>
                        <tr>
                            <td>Product Price</td>
                            <td>
                                <input type="text" value="" placeholder="Price(&pound;)" />
                            </td>
                        </tr>
                        <tr>
                            <td>Product Type</td>
                            <td>
                                <select>
                                    <option value="" selected="selected">select product type</option>
                                    <option value="">Sofa</option>
                                    <option value="">Chair</option>
                                    <option value="">Fridge</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Product Collection</td>
                            <td>
                                <select>
                                    <option value="" selected="selected">select product collection</option>
                                    <option value="">Living Space</option>
                                    <option value="">Bedroom</option>
                                    <option value="">Office</option>
                                    <option value="">Garden</option>
                                    <option value="">Kitchen</option>
                                    <option value="">Bathroom</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Description</td>
                            <td>
                                <textarea name="" cols="30" rows="3"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>Dimentions</td>
                            <td>
                                <input type="text" value="" placeholder="height(cm)" />
                                <input type="text" value="" placeholder="width(cm)" />
                                <input type="text" value="" placeholder="depth(cm)" />
                            </td>
                        </tr>
                    </table>
                    <input type="submit" value="Update" />
                    <p class="error">Error Display</p>
                </article>
                <article class="obj-del">
                    <h4>Remove a Current Product</h4>
                    <table class="product-form" id="del-form">
                        <tr>
                            <td>Enter Product Itentifier</td>
                            <td>
                                <input type="text" value="" placeholder="Item ID" />
                                <input type="submit" value="Delete" />
                            </td>
                        </tr>
                    </table>
                    <p class="error">Error Display</p>
                </article>
            </aside>
            <aside>
                <!-- Jquery HERE for table filtering -->
                <h3>All Products</h3>
                <input type="search" id="search" placeholder="Filter by Product Name" />
                <!-- *** Insert table loop here to display data *** -->
                <table class="all-products">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Product Name</th>
                            <th>Price (&pound;)</th>
                            <th>Type</th>
                            <th>Collection</th>
                            <th>Description</th>
                            <th>Dimentions</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                            <%
                                ClassControlLib.clsHomeProductCollection HomeProductList = new ClassControlLib.clsHomeProductCollection();
                                Int32 Index = 0;
                                Int32 RecordCount = HomeProductList.Count;
                                while (Index < RecordCount)
                                {
                                    %>
                                    <tr>
                                        <td><%Response.Write(HomeProductList.HomeProductList[Index].ProductID); %></td>
                                        <td id="title"><%Response.Write(HomeProductList.HomeProductList[Index].Name); %></td>
                                        <td><%Response.Write(HomeProductList.HomeProductList[Index].Price); %></td>
                                        <td><%Response.Write(HomeProductList.HomeProductList[Index].Type); %></td>
                                        <td><%Response.Write(HomeProductList.HomeProductList[Index].Collection); %></td>
                                        <td><%Response.Write(HomeProductList.HomeProductList[Index].Description); %></td>
                                        <td><%Response.Write(HomeProductList.HomeProductList[Index].Dimentions); %></td>
                                    </tr>
                                    <%
                                        Index++;
                                 }
                                    %>
                    </tbody>
                  </table>

            </aside>
        </section>
    </section>
</asp:Content>
