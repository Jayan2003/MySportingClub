<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Project1.SignUp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom right, #fefefe, #f2f2f2); /* Light gradient */
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
            max-width: 450px;
            width: 100%;
            text-align: center;
        }
        .container h2 {
            font-size: 2rem;
            color: #34495e; /* Elegant navy */
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
        .container input[type="password"], 
        .container input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
        }
        .container input:focus {
            outline: none;
            border-color: #16a085; /* Emerald */
            box-shadow: 0 0 4px rgba(22, 160, 133, 0.4);
        }
        .container button {
            width: 100%;
            padding: 10px 15px;
            font-size: 1rem;
            font-weight: bold;
            font-style: italic;
            background-color: #16a085; /* Beautiful emerald */
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        .container button:hover {
            background-color: #13856c; /* Slightly darker emerald */
            transform: translateY(-2px);
        }
        .container .login-link {
            display: block;
            margin-top: 10px;
            font-size: 0.9rem;
            color: #888;
            text-decoration: none;
        }
        .container .login-link:hover {
            color: #16a085;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Create Your Account</h2>
            
            <label for="username">Username</label>
            <asp:TextBox ID="UsernameTextBox" runat="server" Placeholder="Enter your username"></asp:TextBox>
            
            <label for="email">Email</label>
            <asp:TextBox ID="EmailTextBox" runat="server" TextMode="Email" Placeholder="Enter your email"></asp:TextBox>
            
            <label for="password">Password</label>
            <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" Placeholder="Enter your password"></asp:TextBox>
            
            <asp:Button ID="SignUpButton" runat="server" Text="Sign Up" OnClick="SignUpButton_Click" CssClass="button" />
            
            <a href="Login.aspx" class="login-link">Already have an account? Login here.</a>
        </div>
    </form>
</body>
</html>
