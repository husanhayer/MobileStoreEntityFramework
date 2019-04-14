<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="MobileStoreEntityFramework.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
     <div class="jumbotron" style="background-image:url('banner.jpg');background-color:transparent;">
        <h1>Mobile Store </h1>
       
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>
    
    <br />
    <div class="Container">

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                        <label for="usr">User Name:</label>
                        <asp:TextBox ID="txtUserName" class="form-control" runat="server"></asp:TextBox>   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="Fill User Name"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                        <label for="pwd">Password:</label>
                        <asp:TextBox ID="txtPassword" textMode="Password" class="form-control" runat="server"></asp:TextBox>   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Fill Password"></asp:RequiredFieldValidator>

                    
                </div>

                <div class="form-group">
                    <asp:Button ID="BtnLogin" runat="server" class="btn btn-primary" Text="submit" OnClick="BtnLogin_Click" /> 
                        
                    <h1 id="error" runat="server"></h1>
                </div>

            </div>

        </div>

    </div>


</asp:Content>
