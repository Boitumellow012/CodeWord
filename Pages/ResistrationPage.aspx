<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResistrationPage.aspx.cs" Inherits="BMOnlineTest.Pages.ResistrationPage" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>RegistrationPage</title>
    <link rel="stylesheet" type="text/css" href="../Content/style.css" />
    <style type="text/css">
        .auto-style1 {
            font-weight: 600;
            font-size: 32px;
            color: rgb(255, 130, 46);
        }
    </style>
    </head>
<body>
    
        <header>
            
                <asp:Image ID="Image1" runat="server" Height="62px" ImageUrl="~/Images/Codew.jpg" Width="71px" />
      
        </header>

         <div class="container">
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2>
             <div id="block-84c291fb892d73b4c314" class="sqs-block html-block sqs-block-html" data-block-type="2" data-border-radii="{&quot;topLeft&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;value&quot;:0.0},&quot;topRight&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;value&quot;:0.0},&quot;bottomLeft&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;value&quot;:0.0},&quot;bottomRight&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;value&quot;:0.0}}" style="position: relative; height: auto; padding: 0px 17px 17px; clear: none; color: rgb(0, 0, 0); font-family: europa; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 300; letter-spacing: 0.22px; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                 <div class="sqs-block-content" style="outline: none;">
                     <div class="sqs-html-content" style="outline: none; overflow-wrap: break-word; margin-top: 0px; margin-bottom: 0px;">
                         <h2 style="text-rendering: optimizelegibility; font-family: futura-pt; line-height: 1.2em; margin: 0px 0px 0.5em; text-align: center; white-space: pre-wrap;" class="auto-style1">CodeWord Registration</h2>
                     </div>
                 </div>
             </div>
        <form id="loginForm" runat="server">
<asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
<asp:TextBox ID="txtName" runat="server" CssClass="form-control" OnTextChanged="txtName_TextChanged"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." Display="Dynamic" CssClass="error-message"></asp:RequiredFieldValidator>

<asp:Label ID="lblSurname" runat="server" Text="Surname"></asp:Label>
<asp:TextBox ID="txtSurname" runat="server" CssClass="form-control"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvSurname" runat="server" ControlToValidate="txtSurname" ErrorMessage="Surname is required." Display="Dynamic" CssClass="error-message"></asp:RequiredFieldValidator>

<asp:Label ID="lblID" runat="server" Text="ID"></asp:Label>
<asp:TextBox ID="txtID" runat="server" CssClass="form-control"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvID" runat="server" ControlToValidate="txtID" ErrorMessage="ID is required." Display="Dynamic" CssClass="error-message"></asp:RequiredFieldValidator>

<asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
<asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
<asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format." ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b" Display="Dynamic" CssClass="error-message"></asp:RegularExpressionValidator>
<asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." Display="Dynamic" CssClass="error-message"></asp:RequiredFieldValidator>

<asp:Label ID="lblCellphone" runat="server" Text="Cellphone"></asp:Label>
<asp:TextBox ID="txtCellphone" runat="server" CssClass="form-control"></asp:TextBox>
<asp:RegularExpressionValidator ID="revCellphone" runat="server" ControlToValidate="txtCellphone" ErrorMessage="Invalid cellphone number format." ValidationExpression="^\+?\d{10,14}$" Display="Dynamic" CssClass="error-message"></asp:RegularExpressionValidator>
<asp:RequiredFieldValidator ID="rfvCellphone" runat="server" ControlToValidate="txtCellphone" ErrorMessage="Cellphone is required." Display="Dynamic" CssClass="error-message"></asp:RequiredFieldValidator>

<asp:Label ID="lblPreferredUsername" runat="server" Text="Preferred Username"></asp:Label>
<asp:TextBox ID="txtPreferredUsername" runat="server" CssClass="form-control"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvPreferredUsername" runat="server" ControlToValidate="txtPreferredUsername" ErrorMessage="Preferred Username is required." Display="Dynamic" CssClass="error-message"></asp:RequiredFieldValidator>

<asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." Display="Dynamic" CssClass="error-message"></asp:RequiredFieldValidator>

<asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
<asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
<asp:CompareValidator ID="cvPasswordMatch" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match." Display="Dynamic" CssClass="error-message"></asp:CompareValidator>

<asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" CssClass="btn btn-primary" />


            <div class="form-footer">
            </div>
        </form>
    </div>
           <footer>
            <p>CODE WORD BY BRAKOBALOA Tech &copy; 2024</p>
        </footer>
