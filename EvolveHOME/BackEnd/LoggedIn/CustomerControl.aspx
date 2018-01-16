<%@ Page Title="User Control" Language="C#" MasterPageFile="~/LoggedIn/BackEndStyle.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="content-area">
        <section class="page-title">
            <h2>User Control</h2>
            <h4>Logged In:  <span>Admin Name</span></h4>
        </section>
        <section class="obj-control">
            <aside>
                <article class="obj-add">
                    <h4>Add a New User</h4>
                    <table class="product-form" id="add-form">
                        <tr>
                            <td>First Name</td>
                            <td>
                                <input type="text" value="" placeholder="First Name" />
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name</td>
                            <td>
                                <input type="text" value="" placeholder="Last Name" />
                            </td>
                        </tr>
                        <tr>
                            <td>User Type</td>
                            <td>
                                <select>
                                    <option value="" selected="selected">select user type</option>
                                    <option value="">Customer</option>
                                    <option value="">Admin</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Full Address</td>
                            <td>
                                <textarea name="" cols="30" rows="3"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>Post Code</td>
                            <td>
                                <input type="text" value="" placeholder="PostCode" />
                            </td>
                        </tr>
                    </table>
                    <input type="submit" value="Add New" />
                    <p class="error">Error Display</p>
                </article>
                <article class="obj-edit">
                    <h4>Edit a Current Product</h4>
                    <table class="product-form" id="edit-form">
                        <tr>
                            <td>Enter Users Itentifier</td>
                            <td>
                                <input type="text" value="" placeholder="User ID" />
                                <input type="submit" value="Find" />
                            </td>
                        </tr>
                        <tr>
                            <td>First Name</td>
                            <td>
                                <input type="text" value="" placeholder="First Name" />
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name</td>
                            <td>
                                <input type="text" value="" placeholder="Last Name" />
                            </td>
                        </tr>
                        <tr>
                            <td>User Type</td>
                            <td>
                                <select>
                                    <option value="" selected="selected">select user type</option>
                                    <option value="">Customer</option>
                                    <option value="">Admin</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Full Address</td>
                            <td>
                                <textarea name="" cols="30" rows="3"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>Post Code</td>
                            <td>
                                <input type="text" value="" placeholder="PostCode" />
                            </td>
                        </tr>
                    </table>
                    <input type="submit" value="Update" />
                    <p class="error">Error Display</p>
                </article>
                <article class="obj-del">
                    <h4>Remove a Current User</h4>
                    <table class="product-form" id="del-form">
                        <tr>
                            <td>Enter Users Itentifier</td>
                            <td>
                                <input type="text" value="" placeholder="Users ID" />
                                <input type="submit" value="Delete" />
                            </td>
                        </tr>
                    </table>
                    <p class="error">Error Display</p>
                </article>
            </aside>
            <aside>
                <!-- Jquery HERE for table filtering -->
                <h3>All Users</h3>
                <input type="search" id="search" placeholder="Filter By Account Type" />
                <!-- *** Insert table loop here to display data *** -->
                <table class="all-products">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Account Type</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Address</th>
                            <th>PostCode</th>
                            <th>TeleNum</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td class="title">Admin</td>
                            <td>John</td>
                            <td>Smith</td>
                            <td>86, Example Street</td>
                            <td>LE7 9PU</td>
                            <td>01509 123456</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td class="title">Customer</td>
                            <td>Sarah</td>
                            <td>Smith</td>
                            <td>Flat 46, Example Street</td>
                            <td>LE9 4FU</td>
                            <td>01509 123456</td>
                        </tr>
                    </tbody>
                </table>
            </aside>
        </section>
    </section>
</asp:Content>

