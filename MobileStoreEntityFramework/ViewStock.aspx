<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewStock.aspx.cs" Inherits="MobileStoreEntityFramework.ViewStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        table, td {
            margin:20px;
            padding:20px;
            text-align:center;
        }
        </style>


     <div class="jumbotron" style="background-image:url('banner.jpg');background-color:transparent;">
        <h1>Mobile Store </h1>
       
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>
    <br />
    


    <div class="Container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="Page-Header align-center">All Product  Stock </h1>

                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    
                    
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    
                    <ItemTemplate>
                        <tr style="background-color: #E0FFFF;color: #333333;">
                            <td>
                                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                            </td>
                            <td>
                                <asp:Label ID="MCompanyLabel" runat="server" Text='<%# Eval("MCompany") %>' />
                            </td>
                            <td>
                                <asp:Label ID="MModelLabel" runat="server" Text='<%# Eval("MModel") %>' />
                            </td>
                            <td>
                                <asp:Label ID="MQtyLabel" runat="server" Text='<%# Eval("MQty") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                            <th runat="server">ID</th>
                                            <th runat="server">Company</th>
                                            <th runat="server">Model</th>
                                            <th runat="server">Qty</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    
                </asp:ListView>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MobileStoreConnectionString2 %>" SelectCommand="SELECT * FROM [Stock]"></asp:SqlDataSource>
                
            </div>

             <a href="MainPage.aspx" class="btn btn-primary">Back</a> 
        </div>


    </div>

</asp:Content>
