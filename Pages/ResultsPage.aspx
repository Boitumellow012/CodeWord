<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultsPage.aspx.cs" Inherits="BMOnlineTest.Pages.ResultsPage" %>

     
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

     
<head runat="server">
    <title>Results Page</title>
    <link rel="stylesheet" type="text/css" href="../Content/style.css" />
    <style type="text/css">
        .auto-style1 {
            font-size: 16px;
            text-transform: uppercase;
        }

         .center-align {
        text-align: center;
    }
    </style>
    </head>
<form id="form1" runat="server">
<header>
            <div class="container">
                <asp:Image ID="Image1" runat="server" Height="62px" ImageUrl="~/Images/Codew.jpg" Width="71px" />
            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Exam Results"></asp:Label>
            </div>
     <nav>
                    <ul>
                       
                                             
          
          
                    </ul>
                </nav>
    <h2>
        <asp:Button ID="Button1" runat="server" CssClass="center-align" BackColor="#00CC99" Height="56px" Text="Try Again" Width="203px" />
            </h2>
    <asp:Literal ID="ResultsLiteral" runat="server"></asp:Literal>
        </header>

<div>
        <h3>Additional Information</h3>
        <p>Congratulations on completing the exam! Here are some additional tips and information based on your performance:</p>
        <ul>
            <li>Review the questions you struggled with to better understand the concepts.</li>
            <li>Consider seeking assistance from tutors or joining study groups to improve your skills.</li>
            <li>Explore online resources and tutorials to reinforce your knowledge in C language.</li>
        </ul>
        <h3>Future Opportunities</h3>
        <p>While the exam is a valuable assessment of your current skills, it's also a stepping stone towards future opportunities:</p>
        <ul>
            <li>Continue honing your programming skills to qualify for advanced courses and certifications.</li>
            <li>Explore career pathways in software development, web development, data science, and more.</li>
            <li>Stay updated with industry trends and technologies to remain competitive in the job market.</li>
        </ul>
        <h3>Fun Facts and Upcoming Events</h3>
        <p>Stay engaged with the tech community and explore these fun facts and upcoming events:</p>
        <ul>
            <li>Did you know that the first computer virus was created in 1983 and was named "Brain"?</li>
            <li>Join our coding challenge event next month and showcase your programming skills!</li>
            <li>Learn about the latest innovations in artificial intelligence at our tech conference next week.</li>
        </ul>
    </div>
</form>
<footer> <li class="auto-style1"><a href="HomePage.aspx">back to home</a></li></footer>
