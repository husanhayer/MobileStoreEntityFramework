<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="MobileStoreEntityFramework.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        table, td {
            margin:20px;
            padding:20px;
        }
        </style>
    <br />

     <div class="jumbotron" style="background-image:url('banner.jpg');background-color:transparent;">
        <h1>Mobile Store </h1>
       
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="Container">
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <h1>Enter Product Details</h1>
                <table border="5px">
                    <tr>
                        <td>
                            <label for="usr">Enter Company Name</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCompany" class="form-control" runat="server"></asp:TextBox>   
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCompany" ErrorMessage="Fill Company"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="usr">Enter Model No</label>
                        </td>
                        <td>
                             <asp:TextBox ID="TxtModelNo" class="form-control" runat="server"></asp:TextBox>   
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtModelNo" ErrorMessage="Fill Model No"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="usr">Price</label>

                        </td>
                        <td>
                             <asp:TextBox ID="TxtPrice" TextMode="Number" class="form-control" runat="server"></asp:TextBox>   

                        </td>
                        <td>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtPrice" ErrorMessage="Enter Price"></asp:RequiredFieldValidator>
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <label for="usr">Enter Specification</label>

                        </td>
                        <td>
                              <asp:TextBox ID="TxtSpec"  class="form-control" runat="server"></asp:TextBox>   

                        </td>

                        <td>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtSpec" ErrorMessage="Enter Specification"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <label for="usr">Enter Quantity</label>
                        </td>
                        <td>

                            <asp:TextBox ID="TxtQty"  TextMode="Number" class="form-control" runat="server"></asp:TextBox>   
                        </td>
                        <td>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtQty" ErrorMessage="Enter qty"></asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>

                        <td>
                             <label for="usr">Upload Photo</label>

                        </td>
                        <td>
                            <asp:FileUpload ID="txtFile" runat="server" />

                        </td>
                        <td>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtFile" ErrorMessage="Upload Photo"></asp:RequiredFieldValidator>

                        <%--</td>--%>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnSend" runat="server" Text="Save" class="btn btn-primary" OnClick="btnSend_Click"/></td>
                        <td></td>
                    </tr>


                </table>
                
                        
                        
                    
                </div>
               

                        
                    <h1 id="error" runat="server"></h1>
                <a href="MainPage.aspx" class="btn btn-primary">Back</a>  

            </div>

        </div>

    </div>

</asp:Content>
