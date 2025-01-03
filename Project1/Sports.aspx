<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sports.aspx.cs" Inherits="Project1.Sports" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sports</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: url('images/image2.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #333;
        }
        .header {
            background-color: #003B5C;
            color: #ffffff;
            text-align: center;
            padding: 20px;
            font-size: 2.5rem;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .content {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px;
        }
        .card {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 280px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .card h3 {
            font-size: 1.5rem;
            color: #003B5C;
            margin-bottom: 10px;
        }
        .card button, .card-button {
            padding: 10px 20px;
            background-color: #D4AF37;
            color: #ffffff;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 1rem;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }
        .card button:hover, .card-button:hover {
            background-color: #C49C32;
        }
        .description {
            text-align: center;
            margin: 20px auto;
            padding: 20px;
            background-color: #F2F1F1;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 800px;
        }
        .back-button-container {
            text-align: center;
            margin: 20px;
        }
        .back-button {
            padding: 12px 24px;
            background-color: #003B5C;
            color: #ffffff;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        .back-button:hover {
            background-color: #D4AF37;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">El7arefa Sports</div>
        <div class="content">
            <div class="card">
                <h3>Soccer</h3>
                <asp:Button ID="SoccerButton" runat="server" Text="Learn More" CommandArgument="Soccer" CssClass="card-button" OnClick="ShowDescription_Click" />
            </div>
            <div class="card">
                <h3>Basketball</h3>
                <asp:Button ID="BasketballButton" runat="server" Text="Learn More" CommandArgument="Basketball" CssClass="card-button" OnClick="ShowDescription_Click" />
            </div>
            <div class="card">
                <h3>Swimming</h3>
                <asp:Button ID="SwimmingButton" runat="server" Text="Learn More" CommandArgument="Swimming" CssClass="card-button" OnClick="ShowDescription_Click" />
            </div>
            <div class="card">
                <h3>Tennis</h3>
                <asp:Button ID="TennisButton" runat="server" Text="Learn More" CommandArgument="Tennis" CssClass="card-button" OnClick="ShowDescription_Click" />
            </div>
        </div>
        <div class="description">
            <asp:Label ID="SportTitleLabel" runat="server" Text="" Font-Size="Large"></asp:Label>
            <asp:Label ID="SportDescriptionLabel" runat="server" Text=""></asp:Label>
        </div>
        <div class="back-button-container">
            <asp:Button ID="BackToWelcomeButton" runat="server" Text="Back to Welcome Page" PostBackUrl="~/Welcome.aspx"
                CssClass="back-button" />
        </div>
    </form>
</body>
</html>
