<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="Login.aspx.cs" Inherits="BMOnlineTest.Pages.Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="../Content/style.css" />
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
                         <h2 style="text-rendering: optimizelegibility; font-family: futura-pt; font-weight: 600; font-style: normal; font-size: 32px; letter-spacing: 0px; text-transform: none; line-height: 1.2em; color: rgb(255, 130, 46); margin: 0px 0px 0.5em; text-align: center; white-space: pre-wrap;">Please Enter Your Login Details Below</h2>
                     </div>
                 </div>
             </div>
        <form id="loginForm" runat="server">
            <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>

            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>

            <asp:CheckBox ID="chkRememberMe" runat="server" Text="Remember Me" CssClass="form-control" />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="btn btn-primary" />

            <asp:Label ID="PassValidation" runat="server" ForeColor="#CC3300" Text="Incorrect Password Please Try Again"></asp:Label>

            <div class="form-footer">
                <asp:HyperLink ID="lnkForgotPassword" runat="server" NavigateUrl="ForgotPassword.aspx">Forgot Password?</asp:HyperLink>
            </div>
        </form>
    </div>
           <footer>
            <p>CODE WORD BY BRAKOBALOA Tech &copy; 2024</p>
        </footer>
</body>
</html>