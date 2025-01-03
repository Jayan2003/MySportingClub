<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Project1.Events" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upcoming Events</title>
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
            color:#003B5C
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
            color: #1f4037; /* Dark green for titles */
            margin-bottom: 10px;
        }
        .card p {
            font-size: 1rem;
            color: #6c757d; /* Medium gray */
            margin-bottom: 10px;
        }
        .card .date {
            font-size: 1rem;
            color: #495057; /* Darker gray for dates */
            font-weight: bold;
            margin-bottom: 15px;
        }
        .card button {
            padding: 10px 20px;
            background-color: #D4AF37; 
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 1rem;
            font-weight: bold;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        .card button:hover {
            background-color: #D4AF37; 
            transform: translateY(-2px);
        }
        .back-button {
            display: block;
            margin: 40px auto 20px;
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
        .universal-button {
        padding: 10px 20px;
        background-color: #003B5C; 
        color: white;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-size: 1rem;
        font-weight: bold;
        transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .universal-button:hover {
            background-color: #D4AF37; 
            transform: translateY(-2px);
        }
        .btn-success {
        padding: 5px 10px; /* Smaller padding for a smaller button */
        background-color: white; /* White background color */
        color: #1f4037; /* Dark green text color */
        border: 1px solid #1f4037; /* Add a border to maintain consistency */
        border-radius: 5px; /* Rounded corners */
        cursor: pointer;
        margin-top: 10px;
        font-size: 0.9rem; /* Slightly smaller font size */
        font-weight: bold;
        transition: background-color 0.3s ease, transform 0.2s ease, color 0.3s ease, box-shadow 0.2s ease; /* Smooth transitions */
        }




        /* Modal Styling */
        .modal {
            display: none; /* Hidden by default */
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Black transparent overlay */
            justify-content: center;
            align-items: center;
            padding: 20px; /* Add padding for smaller screens */
            box-sizing: border-box;
        }

        .modal-content {
            background-color: white;
            padding: 20px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            width: 90%; /* Responsive width */
            max-width: 400px; /* Maximum width for larger screens */
        }

        .modal-content input {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ced4da;
            border-radius: 5px;
        }

        .modal-content button {
            padding: 10px 20px;
            background-color: #1f4037;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }

        .modal-content button:hover {
            background-color: #146c43;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">Upcoming Events</div>
        <div class="content">
            <!-- Soccer Tournament -->
            <div class="card">
                <h3>Soccer Tournament</h3>
                <p>Join us for a thrilling soccer tournament featuring top teams.</p>
                <p class="date">Date: April 15, 2024</p>
            </div>
            <!-- Swimming Competition -->
            <div class="card">
                <h3>Swimming Competition</h3>
                <p>Show off your swimming skills in our exciting competition.</p>
                <p class="date">Date: April 20, 2024</p>
            </div>
            <!-- Tennis Championship -->
            <div class="card">
                <h3>Tennis Championship</h3>
                <p>Participate in the ultimate tennis championship.</p>
                <p class="date">Date: April 25, 2024</p>
            </div>
        </div>
        <div style="text-align: center; margin: 30px 0;">
        <button type="button" class="universal-button" onclick="openModal()">Register Now</button>
    </div>

        <!-- Modal -->
        <div class="modal" id="modal">
            <div class="modal-content">
                <h3 id="modal-title">Register</h3>
                <asp:TextBox ID="username1" runat="server" CssClass="form-control" placeholder="Enter your username"></asp:TextBox>
                <asp:TextBox ID="Eventname" runat="server" CssClass="form-control" placeholder="Enter Event Name"></asp:TextBox>
    <asp:TextBox ID="email" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter your email"></asp:TextBox>
                <asp:Button ID="submitRegistration" runat="server" CssClass="btn btn-success" Text="Submit" OnClick="SubmitRegistration_Click" />
    <button type="button" onclick="closeModal()" style="background-color: #dc3545;">Close</button>
            </div>
        </div>
        <a href="Welcome.aspx" class="back-button">Back to Welcome Page</a>
        

    </form>

    <script>
        function openModal(eventName) {
            document.getElementById("modal-title").innerText = `Register For An Event`;
            document.getElementById("modal").style.display = "flex";
        }

        function closeModal() {
            document.getElementById("modal").style.display = "none";
        }

        function submitRegistration() {
            const username = document.getElementById("username").value;
            const email = document.getElementById("email").value;
            if (username && email) {
                alert(`Thank you, ${username}, for registering! We will contact you at ${email}.`);
                closeModal();
            } else {
                alert("Please fill out all fields.");
            }
        }
    </script>
</body>
</html>
