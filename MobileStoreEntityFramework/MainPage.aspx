<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="MobileStoreEntityFramework.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
         .ok ul li {
            border:5px inset grey;
            height:50px;
            width:100%;
            margin:10px;
            list-style:none;
            padding:10px;
            font-size:30px;
            line-height:30px;
        }
        .ok ul li:hover{
                background-color:black;
               
        }
            .ok ul li:hover > a {
             color:white;
            }
    </style>
     <div class="jumbotron" style="background-image:url('banner.jpg');background-color:transparent;">
        <h1>Mobile Store </h1>
       
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>
    <div class="col-md-12 ok">


    
    <ul>
        <li><a href="AddProduct.aspx">Add Product</a></li>
        <li><a href="ViewProduct.aspx">View Product</a></li>
        <li><a href="ViewStock.aspx">View Stock</a></li>
        <li><a href="ContactView.aspx">View Message</a></li>


    </ul>
        </div>
    <h1 id="error" runat="server"></h1>

</asp:Content>
