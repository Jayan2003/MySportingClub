<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project1.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom right, #fefefe, #f5f5f5);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        .container {
            background-color: white;
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            text-align: center;
        }

        .container h2 {
            font-size: 2rem;
            color: #34495e;
            margin-bottom: 20px;
            font-weight: bold;
            font-style: italic;
        }

        .container label {
            display: block;
            text-align: left;
            font-size: 1rem;
            margin-bottom: 5px;
            color: #555;
            font-weight: bold;
        }

        .container input[type="text"],
        .container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
        }

        .container button {
            width: 100%;
            padding: 10px 15px;
            font-size: 1rem;
            font-weight: bold;
            background-color: #16a085;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .container button:hover {
            background-color: #13856c;
            transform: translateY(-2px);
        }

        .container .error-message {
            color: red;
            font-size: 0.9rem;
            margin-top: 10px;
            display: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Login to Your Account</h2>

            <label for="username">Username</label>
            <asp:TextBox ID="UsernameTextBox" runat="server" Placeholder="Enter your username"></asp:TextBox>

            <label for="password">Password</label>
            <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" Placeholder="Enter your password"></asp:TextBox>

            <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />

            <asp:Label ID="ErrorMessageLabel" runat="server" Text="" Visible="false" CssClass="error-message"></asp:Label>
        </div>
    </form>
</body>
</html>
