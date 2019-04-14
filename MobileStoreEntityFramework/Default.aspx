<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MobileStoreEntityFramework._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #record .ok {
            float:left;
            border:1px solid red;
            width:300px;
            height:auto;

        }

    </style>

    <div class="jumbotron" style="background-image:url('banner.jpg');background-color:transparent;">
        <h1>Mobile Store </h1>
       
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>
    <div class="container">

    <div  id="record" runat="server">
        
    </div>
        </div>
</asp:Content>
