<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="BMOnlineTest.Pages.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../Content/style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="about-container">
        <h1>About Us</h1>
        <section class="about-section">
            <h2>Our Mission</h2>
            <p>At CodeWord, our mission is to empower individuals through innovative and accessible tech education. We strive to provide top-notch training and resources to help our students excel in the ever-evolving field of technology.</p>
        </section>

        <section class="about-section">
            <h2>Our Values</h2>
            <ul>
                <li><strong>Innovation:</strong> We embrace change and encourage creativity to stay at the forefront of technology.</li>
                <li><strong>Excellence:</strong> We commit to delivering the highest quality education and support to our students.</li>
                <li><strong>Inclusivity:</strong> We believe in providing opportunities for everyone, regardless of background or experience level.</li>
                <li><strong>Community:</strong> We foster a supportive and collaborative environment for all our members.</li>
            </ul>
        </section>

        <section class="about-section">
            <h2>Our Team</h2>
            <p>Our team is composed of experienced educators, industry professionals, and passionate tech enthusiasts dedicated to helping you succeed. We bring a diverse range of skills and expertise to deliver a comprehensive learning experience.</p>
            <div class="team-photos">
                <!-- Add team member photos here -->
                <img src="../Images/team1.jpeg" alt="Team Member 1" class="team-photo">
                <img src="../Images/team2.jpeg" alt="Team Member 2" class="team-photo">
                <img src="../Images/team3.jpeg" alt="Team Member 3" class="team-photo">
                <!-- Repeat as necessary -->
            </div>
        </section>

        <section class="about-section">
            <h2>Our Achievements</h2>
            <p>We are proud of the milestones we've achieved over the years, including:</p>
            <ul>
                <li>Graduating over 5,000 students who have gone on to successful careers in tech.</li>
                <li>Establishing partnerships with leading tech companies to provide job placements.</li>
                <li>Hosting numerous tech events and hackathons that bring together the brightest minds in the industry.</li>
                <li>Receiving recognition for our contributions to tech education and innovation.</li>
            </ul>
        </section>

        <section class="about-section">
            <h2>Join Us</h2>
            <p>Whether you're a prospective student, a seasoned professional, or a company looking to partner with us, we'd love to hear from you! Contact us today to learn more about how we can work together to shape the future of technology.</p>
            <a href="Contact.aspx" class="contact-button">Contact Us</a>
        </section>
    </div>
</asp:Content>
