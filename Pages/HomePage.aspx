<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BMOnlineTest.Pages.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home Page</title>
    <style type="text/css">
        .auto-style1 {
            height: 144px;
        }
        .auto-style2 {
            position: relative;
            left: 0px;
            top: 0px;
            height: 62px;
        }
        .auto-style3 {
            height: 3px;
        }
        .auto-style4 {
            position: relative;
            height: 452px;
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style3">&nbsp;</h2>
    <center class="auto-style1">
        <div class="elementor-widget" data-element_type="widget" data-id="fa09a58" data-widget_type="heading.default">
            <div class="elementor-widget-container" style="height: 46px; margin: 0;">
                <h1 class="elementor-heading-title elementor-size-default" style="font-family: Raleway, sans-serif; font-weight: 700; line-height: 46px; font-size: 40px; text-transform: capitalize;">Bridging The Tech Skills Gap</h1>
            </div>
        </div>
        <div class="auto-style2" data-element_type="widget" data-id="e80145b" data-widget_type="heading.default">
            <div class="elementor-widget-container" style="height: 150px; padding: 0 0 30px;">
                <p class="elementor-heading-title elementor-size-default" style="line-height: 24px; font-family: Raleway, sans-serif;">
                    Codeword is a South African software development academy tackling the technical skills shortage and youth unemployment. We recruit talented youth, providing specialized training to turn them into proficient backend developers in 16 months using our tailored curriculum and learning system.
                </p>
            </div>
        </div>
    </center>

    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/learnings.png" />

    <div class="ai-info">
        <div class="auto-style4" data-block-type="2" style="padding: 17px;">
            <h2 style="font-family: futura-pt; font-weight: 600; font-size: 32px; color: rgb(0, 128, 0); text-align: center;">
Welcome to the CodeWord learnership applications page! Are you ready to join the next generation of innovative thinkers and tech-savvy professionals? 🚀</h2>
            <p style="text-align: center;">
                Click the button below to jump-start your application process. If you’re applying for a learnership, you’re in the right place! <strong>Apply below:</strong>😎
            </p>
            <p style="text-align: center;">
                &nbsp;</p>
            <div class="sqs-block-button-container" data-alignment="center" data-animation-role="button" data-button-size="large" data-button-type="secondary" style="text-align: center;">
                <a class="sqs-block-button-element--large sqs-button-element--secondary" href="ResistrationPage.aspx" target="_blank" style="background: transparent; text-decoration: none; color: rgb(0, 128, 0); padding: 25px 46px; border: 2px solid rgb(255, 129, 44); font-family: futura-pt; font-size: 20px; font-weight: 500; text-transform: uppercase;">Register NOW</a>
                <br />
                <br />
            </div>
            <p style="font-weight: bold; text-align: center;">
                If you are already a learner with us please log into the portal.
            </p>
            <p style="font-weight: bold; text-align: center;">
                &nbsp;</p>
            <div class="sqs-block-button-container" data-alignment="center" data-animation-role="button" data-button-size="large" data-button-type="secondary" style="text-align: center;">
                <a class="sqs-block-button-element--large sqs-button-element--secondary" href="Login.aspx" target="_blank" style="background: rgb(255, 129, 44); text-decoration: none; color: rgb(0, 128, 0); padding: 25px 46px; border: 2px solid rgb(255, 129, 44); font-family: futura-pt; font-size: 20px; font-weight: 500; text-transform: uppercase;">LOGIN</a>
            </div>
        </div>
    </div>

    <div class="ai-images">
        <img src="../Images/CODE.png" alt="AI Image 1">
        <img src="../Images/DataAnalysS%20(1).png" alt="AI Image 2">
        <img src="../Images/AWS.png" alt="AI Image 3">
    </div>

    <div class="additional-info">
        <h3>How to Apply?</h3>
        <p>To apply for the online exam, you need to first register an account. Once registered, you can login and start taking the exam.</p>
        <h3>Writing the Online Exam</h3>
        <p>Our online exams are designed to test your knowledge in various subjects. Each exam consists of multiple choice questions. Simply select the correct answer and proceed to the next question.</p>
    </div>
</asp:Content>
