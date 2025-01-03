<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Project1.ContactUs" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: url('images/image2.jpg') no-repeat center center fixed; /* Background image */
            background-size: cover; /* Ensures the image covers the entire screen */
            color: #333;
        }
        .header {
            background: #003B5C; 
            color: white;
            text-align: center;
            padding: 20px;
            font-size: 2.5rem;
            font-weight: bold;
        }
        .container {
            max-width: 600px;
            margin: 40px auto;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .container h2 {
            font-size: 1.8rem;
            color: #003B5C;
            text-align: center;
            margin-bottom: 20px;
            font-weight: bold;
        }
        .container label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            font-size: 1rem;
        }
        .container input[type="text"],
        .container input[type="email"],
        .container textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
        }
        .container input:focus,
        .container textarea:focus {
            outline: none;
            border-color: #6a11cb;
            box-shadow: 0 0 4px rgba(106, 17, 203, 0.3);
        }
        .container button {
            width: 100%;
            padding: 12px;
            background: #6a11cb; /* Purple-blue button */
            color: white;
            border: none;
            font-size: 1rem;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        .container button:hover {
            background: #4d0c9a; /* Darker purple on hover */
            transform: translateY(-2px);
        }
        .back-button {
            display: block;
            margin: 20px auto;
            text-align: center;
            padding: 12px 25px;
            background: #003B5C;
            color: white;
            text-decoration: none;
            font-size: 1rem;
            font-weight: bold;
            border-radius: 8px;
            transition: background-color 0.3s ease;
            width: fit-content;
        }
        .back-button:hover {
            background: #D4AF37;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">Contact Us</div>
        <div class="container">
            <h2>We'd Love to Hear from You!</h2>
            <label for="name">Full Name</label>
            <asp:TextBox ID="NameTextBox" runat="server" Placeholder="Enter your full name"></asp:TextBox>

            <label for="email">Email Address</label>
            <asp:TextBox ID="EmailTextBox" runat="server" TextMode="Email" Placeholder="Enter your email"></asp:TextBox>

            <label for="message">Message</label>
            <asp:TextBox ID="MessageTextBox" runat="server" TextMode="MultiLine" Rows="5" Placeholder="Enter your message"></asp:TextBox>

            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" CssClass="button" />
        </div>
        <a href="Welcome.aspx" class="back-button">Back to Welcome Page</a>
    </form>
</body>
</html>
