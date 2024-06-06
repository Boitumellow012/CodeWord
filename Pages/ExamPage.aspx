<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExamPage.aspx.cs" Inherits="BMOnlineTest.Pages.ExamPage" %>
     
<head runat="server">
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="../Content/style.css" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 600px;
        }
    </style>
    </head>
<header>
            <div class="container">
                <asp:Image ID="Image1" runat="server" Height="62px" ImageUrl="~/Images/Codew.jpg" Width="71px" />
            </div>
        </header>

      <h2>C Language Exam&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2>
    <form id="examForm" runat="server">
    <h2 class="auto-style1">Good Luck&nbsp; :
        <asp:Label ID="lblIdNumber" runat="server"></asp:Label>
        </h2>
        <div class="question">
            <h3>1. What is the correct syntax to output "Hello, World" in C?</h3>
            <input type="radio" id="q1a" name="q1" value="A">
            <label for="q1a">A. printf("Hello, World");</label><br>
            <input type="radio" id="q1b" name="q1" value="B">
            <label for="q1b">B. echo "Hello, World";</label><br>
            <input type="radio" id="q1c" name="q1" value="C">
            <label for="q1c">C. print("Hello, World");</label><br>
            <input type="radio" id="q1d" name="q1" value="D">
            <label for="q1d">D. cout << "Hello, World";</label>
        </div>
        
        <div class="question">
            <h3>2. Which of the following is a correct comment in C?</h3>
            <input type="radio" id="q2a" name="q2" value="A">
            <label for="q2a">A. // This is a comment</label><br>
            <input type="radio" id="q2b" name="q2" value="B">
            <label for="q2b">B. /* This is a comment */</label><br>
            <input type="radio" id="q2c" name="q2" value="C">
            <label for="q2c">C. # This is a comment</label><br>
            <input type="radio" id="q2d" name="q2" value="D">
            <label for="q2d">D. -- This is a comment</label>
        </div>

        <div class="question">
            <h3>3. Which data type is typically used for numbers with decimal points in C?</h3>
            <input type="radio" id="q3a" name="q3" value="A">
            <label for="q3a">A. int</label><br>
            <input type="radio" id="q3b" name="q3" value="B">
            <label for="q3b">B. float</label><br>
            <input type="radio" id="q3c" name="q3" value="C">
            <label for="q3c">C. char</label><br>
            <input type="radio" id="q3d" name="q3" value="D">
            <label for="q3d">D. string</label>
        </div>

        <div class="question">
            <h3>4. How do you declare a variable in C?</h3>
            <input type="radio" id="q4a" name="q4" value="A">
            <label for="q4a">A. var x;</label><br>
            <input type="radio" id="q4b" name="q4" value="B">
            <label for="q4b">B. int x;</label><br>
            <input type="radio" id="q4c" name="q4" value="C">
            <label for="q4c">C. declare x;</label><br>
            <input type="radio" id="q4d" name="q4" value="D">
            <label for="q4d">D. let x;</label>
        </div>

        <div class="question">
            <h3>5. Which library function would you use to find the length of a string in C?</h3>
            <input type="radio" id="q5a" name="q5" value="A">
            <label for="q5a">A. length()</label><br>
            <input type="radio" id="q5b" name="q5" value="B">
            <label for="q5b">B. strlen()</label><br>
            <input type="radio" id="q5c" name="q5" value="C">
            <label for="q5c">C. size()</label><br>
            <input type="radio" id="q5d" name="q5" value="D">
            <label for="q5d">D. len()</label>
        </div>

        <div class="question">
            <h3>6. How do you start a for loop in C?</h3>
            <input type="radio" id="q6a" name="q6" value="A">
            <label for="q6a">A. for (i = 0; i < 10; i++)</label><br>
            <input type="radio" id="q6b" name="q6" value="B">
            <label for="q6b">B. for (i < 10; i++)</label><br>
            <input type="radio" id="q6c" name="q6" value="C">
            <label for="q6c">C. for (i = 0; i < 10)</label><br>
            <input type="radio" id="q6d" name="q6" value="D">
            <label for="q6d">D. for i in range(0, 10)</label>
        </div>

        <div class="question">
            <h3>7. Which of the following is a valid keyword in C?</h3>
            <input type="radio" id="q7a" name="q7" value="A">
            <label for="q7a">A. include</label><br>
            <input type="radio" id="q7b" name="q7" value="B">
            <label for="q7b">B. int</label><br>
            <input type="radio" id="q7c" name="q7" value="C">
            <label for="q7c">C. function</label><br>
            <input type="radio" id="q7d" name="q7" value="D">
            <label for="q7d">D. main</label>
        </div>

        <div class="question">
            <h3>8. Which of the following operators is used to allocate memory dynamically in C?</h3>
            <input type="radio" id="q8a" name="q8" value="A">
            <label for="q8a">A. alloc</label><br>
            <input type="radio" id="q8b" name="q8" value="B">
            <label for="q8b">B. malloc</label><br>
            <input type="radio" id="q8c" name="q8" value="C">
            <label for="q8c">C. new</label><br>
            <input type="radio" id="q8d" name="q8" value="D">
            <label for="q8d">D. create</label>
        </div>

        <div class="question">
            <h3>9. Which of the following statements is true about C?</h3>
            <input type="radio" id="q9a" name="q9" value="A">
            <label for="q9a">A. C is a high-level programming language.</label><br>
            <input type="radio" id="q9b" name="q9" value="B">
            <label for="q9b">B. C is an object-oriented programming language.</label><br>
            <input type="radio" id="q9c" name="q9" value="C">
            <label for="q9c">C. C is a markup language.</label><br>
            <input type="radio" id="q9d" name="q9" value="D">
            <label for="q9d">D. C is a scripting language.</label>
        </div>

        <div class="question">
            <h3>10. What is the size of an int data type in C?</h3>
            <input type="radio" id="q10a" name="q10" value="A">
            <label for="q10a">A. 2 bytes</label><br>
            <input type="radio" id="q10b" name="q10" value="B">
            <label for="q10b">B. 4 bytes</label><br>
            <input type="radio" id="q10c" name="q10" value="C">
            <label for="q10c">C. 8 bytes</label><br>
            <input type="radio" id="q10d" name="q10" value="D">
            <label for="q10d">D. 1 byte</label>
        </div>

        <asp:Button ID="SubmitButton" runat="server" Text="Submit Exam" OnClick="SubmitButton_Click" Height="57px" />
    </form>