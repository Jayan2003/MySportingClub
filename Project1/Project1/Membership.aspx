<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Membership.aspx.cs" Inherits="Project1.Membership" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Membership Plans</title>
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
        .content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            padding: 40px 20px;
            margin: 0 auto;
            max-width: 1200px;
        }
        .card {
            background-color: white;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
        }
        .card h3 {
            font-size: 1.6rem;
            color: #003B5C;
            margin-bottom: 10px;
        }
        .card p {
            font-size: 1rem;
            color: #666;
            margin-bottom: 20px;
        }
        .join-now {
            margin: 40px auto 20px;
            padding: 12px 25px;
            background-color: #003B5C;
            color: white;
            font-size: 1.2rem;
            font-weight: bold;
            border-radius: 8px;
            border: none;
            cursor: pointer;
            display: block;
            text-align: center;
            width: fit-content;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        .join-now:hover {
            background-color: #D4AF37;
            transform: translateY(-2px);
        }
        .back-button {
            display: block;
            margin: 20px auto;
            text-align: center;
            padding: 12px 25px;
            background-color: #003B5C;
            color: white;
            text-decoration: none;
            font-size: 1.2rem;
            font-weight: bold;
            border-radius: 8px;
            transition: background-color 0.3s ease;
            width: fit-content;
        }
        .back-button:hover {
            background-color: #D4AF37;
        }
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Black overlay */
            justify-content: center;
            align-items: center;
        }
        .modal-content {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            width: 90%;
            max-width: 400px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }
        .modal-content h3 {
            margin-bottom: 20px;
            font-size: 1.5rem;
            color: #007bff;
        }
        .modal-content label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .modal-content input, .modal-content select {
            width: 80%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .modal-content button {
            padding: 10px 20px;
            font-size: 1rem;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 5px;
        }
        .submit-button {
            background-color: #007bff;
            color: white;
        }
        .submit-button:hover {
            background-color: #0056b3;
        }
        .close-button {
            background-color: #e74c3c;
            color: white;
        }
        .close-button:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">Club Membership Plans</div>
        <div class="content">
            <!-- Standard Membership -->
            <div class="card">
                <h3>Standard Membership</h3>
                <p>Access to sports facilities and social events. Ideal for individuals and families.</p>
                <p><strong>Price:</strong> $500/year</p>
            </div>
            <!-- Premium Membership -->
            <div class="card">
                <h3>Premium Membership</h3>
                <p>Includes access to all facilities, events, and discounts on additional services.</p>
                <p><strong>Price:</strong> $1,000/year</p>
            </div>
            <!-- VIP Membership -->
            <div class="card">
                <h3>VIP Membership</h3>
                <p>All-inclusive: priority access to events, personal locker, and exclusive VIP lounge access.</p>
                <p><strong>Price:</strong> $2,000/year</p>
            </div>
        </div>
        <button type="button" class="join-now" onclick="openModal()">Join Now</button>
        <a href="Welcome.aspx" class="back-button">Back to Welcome Page</a>

        <!-- Modal -->
        <div id="membershipModal" class="modal">
            <div class="modal-content">
                <h3>Join Membership</h3>
                <label for="username">Username</label>
                <asp:TextBox ID="UsernameTextBox" runat="server" Placeholder="Enter your username"></asp:TextBox>
                <label for="email">Email</label>
                <asp:TextBox ID="EmailTextBox" runat="server" Placeholder="Enter your email"></asp:TextBox>
                <label for="membershipType">Membership Type</label>
                <asp:DropDownList ID="MembershipTypeDropDown" runat="server">
                    <asp:ListItem Value="Standard Membership">Standard Membership</asp:ListItem>
                    <asp:ListItem Value="Premium Membership">Premium Membership</asp:ListItem>
                    <asp:ListItem Value="VIP Membership">VIP Membership</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="submit-button" OnClick="SubmitButton_Click" />
                <button type="button" class="close-button" onclick="closeModal()">Close</button>
            </div>
        </div>
    </form>

    <script>
        function openModal() {
            document.getElementById('membershipModal').style.display = 'flex';
        }
        function closeModal() {
            document.getElementById('membershipModal').style.display = 'none';
        }
    </script>
</body>
</html>
