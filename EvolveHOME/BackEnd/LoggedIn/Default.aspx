<%@ Page Title="Control Portal" Language="C#" MasterPageFile="~/LoggedIn/BackEndStyle.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="content-area">
        <section class="page-title">
            <h2>Warehouse Pick List</h2>
            <h4>Logged In:  <span>Admin Name</span></h4>
        </section>
        <section class="quickview-area">
            <article id="today-pick">
                <h4>Todays Picks</h4>
                <table>
                    <tr>
                        <th>Order ID</th>
                        <th>Customer</th>
                        <th>Order Date</th>
                        <th>Delivery Date</th>
                        <th>Status</th>
                    </tr>
                    <tr>
                        <td>53</td>
                        <td>Admin Smith</td>
                        <td>19/12/2017</td>
                        <td>25/12/2017</td>
                        <td>
                            <input type="checkbox" name="name" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td>54</td>
                        <td>Admin Smith</td>
                        <td>19/12/2017</td>
                        <td>25/12/2017</td>
                        <td>
                            <input type="checkbox" name="name" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td>55</td>
                        <td>Admin Smith</td>
                        <td>19/12/2017</td>
                        <td>25/12/2017</td>
                        <td>
                            <input type="checkbox" name="name" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td>56</td>
                        <td>Admin Smith</td>
                        <td>19/12/2017</td>
                        <td>25/12/2017</td>
                        <td>
                            <input type="checkbox" name="name" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td>57</td>
                        <td>Admin Smith</td>
                        <td>19/12/2017</td>
                        <td>25/12/2017</td>
                        <td>
                            <input type="checkbox" name="name" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td>58</td>
                        <td>Admin Smith</td>
                        <td>19/12/2017</td>
                        <td>25/12/2017</td>
                        <td>
                            <input type="checkbox" name="name" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td>58</td>
                        <td>Admin Smith</td>
                        <td>19/12/2017</td>
                        <td>25/12/2017</td>
                        <td>
                            <input type="checkbox" name="name" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td>58</td>
                        <td>Admin Smith</td>
                        <td>19/12/2017</td>
                        <td>25/12/2017</td>
                        <td>
                            <input type="checkbox" name="name" value="" />
                        </td>
                    </tr>
                    <tr>
                        <td>58</td>
                        <td>Admin Smith</td>
                        <td>19/12/2017</td>
                        <td>25/12/2017</td>
                        <td>
                            <input type="checkbox" name="name" value="" />
                        </td>
                    </tr>
                </table>
            </article>
            <article id="tomorrow-pick">
                <h4>Tomorrows Picks</h4>
                <table>
                    <tr>
                        <th>Order ID</th>
                        <th>Customer</th>
                        <th>Order Date</th>
                        <th>Delivery Date</th>
                    </tr>
                    <tr>
                        <td>98</td>
                        <td>John Smith</td>
                        <td>18/12/2017</td>
                        <td>26/12/2017</td>
                    </tr>
                    <tr>
                        <td>98</td>
                        <td>John Smith</td>
                        <td>18/12/2017</td>
                        <td>26/12/2017</td>
                    </tr>
                    <tr>
                        <td>98</td>
                        <td>John Smith</td>
                        <td>18/12/2017</td>
                        <td>26/12/2017</td>
                    </tr>
                    <tr>
                        <td>98</td>
                        <td>John Smith</td>
                        <td>18/12/2017</td>
                        <td>26/12/2017</td>
                    </tr>
                </table>
            </article>
        </section>
    </section>
</asp:Content>

