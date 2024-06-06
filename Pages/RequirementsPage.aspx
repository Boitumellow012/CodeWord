<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequirementsPage.aspx.cs" Inherits="BMOnlineTest.Pages.RequirementsPage" %>


<!DOCTYPE html>
<html>
<head runat="server">
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="../Content/style.css" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 600px;
        }
    </style>
    </head>
<body>
    
        <form id="form1" runat="server">
    
        <header>
            
                <asp:Image ID="Image1" runat="server" Height="62px" ImageUrl="~/Images/Codew.jpg" Width="71px" />
      
        </header>

<body>
    <h2 class="auto-style1">Welcome&nbsp; :
        <asp:Label ID="lblIdNumber" runat="server"></asp:Label>
    </h2>
    <h2>CODEWORD REQUIREMENTS</h2>
    <h3>PLEASE ENSURE YOU HAVE THE FOLLOWING:</h3>
    <ol>
        <li>Access to smartphone or computer and a stable internet connection.</li>
        <li>An email address</li>
        <li>A valid South African mobile number.</li>
    </ol>
    
    <h3>APPLICATION REQUIREMENTS</h3>
    <ol>
        <li>Applicants must be between the ages of 17 and 35.</li>
        <li>Applicants must hold one of the following:
            <ul>
                <li>Valid South African ID</li>
                <li>Valid Passport with work permit</li>
                <li>Valid Asylum seekers permit</li>
            </ul>
        </li>
        <li>CODEWORD is a full-time program, you will not be able to join the program if you are currently working or studying at another institution.</li>
    </ol>
    
    <h3>ACCEPT CODEWORD'S PRIVACY POLICY</h3>
    <p>Click <a href="#">here</a> to read CODEWORD's privacy policy</p>
    <p>Click <a href="#">here</a> to read CODEWORD's PAIA/POPI Manual</p>
    
    <input type="checkbox" id="privacyPolicy" name="privacyPolicy">
    <label for="privacyPolicy">Accept privacy and policy.</label>
    <asp:Button ID="Accept" runat="server" Height="62px" OnClick="Accept_Click" Text="Accept and Start Test" Width="410px" />
            </form>
</body>
</html>
