<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MobileStoreEntityFramework.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
     <div class="jumbotron" style="background-image:url('banner.jpg');background-color:transparent;">
        <h1>Mobile Store </h1>
       
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>
    
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>

    <div class="Container">
        <div class="row">
            <div class="col-lg-6">

                <div class="form-group">
                        <label for="usr">Enter Name:</label>
                        <asp:TextBox ID="txtName" class="form-control input-lg" runat="server"></asp:TextBox>   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Fill User Name"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                        <label for="pwd">Email-ID:</label>
                        <asp:TextBox ID="txtEmail" textMode="Email" class="form-control" runat="server"></asp:TextBox>   
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Fill Password"></asp:RequiredFieldValidator>



                    
                </div>

                <div class="form-group">
                        <label for="pwd">Contact No:</label>
                        <asp:TextBox ID="txtContact" textMode="Number" class="form-control" runat="server"></asp:TextBox>   
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContact" ErrorMessage="Fill Password"></asp:RequiredFieldValidator>



                    
                </div>


                
                <div class="form-group">
                        <label for="pwd">Message:</label>
                        <asp:TextBox ID="txtMsg" textMode="MultiLine" class="form-control input-sm" runat="server"></asp:TextBox>   
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMsg" ErrorMessage="Fill Password"></asp:RequiredFieldValidator>



                    
                </div>




                <div class="form-group">
                    <asp:Button ID="BtnLogin" runat="server" class="btn btn-primary" Text="Send " OnClick="BtnLogin_Click"  /> 
                        
                    <h1 id="error" runat="server"></h1>
                </div>


            </div>
            <div class="col-md-6">
                <h1 class="Page-header">Location on Google Map</h1>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d817202.3861024495!2d174.30502620606845!3d-36.86170744554708!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d47fb5a9ce6fb%3A0x500ef6143a29917!2sAuckland%2C+New+Zealand!5e0!3m2!1sen!2sin!4v1553480710057" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

            </div>


        </div>

    </div>



    <address>
        One Microsoft Way<br />
        Auckland, NZ 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Husain@admin.com">Husain@admin.com</a><br />
        
    </address>
</asp:Content>
