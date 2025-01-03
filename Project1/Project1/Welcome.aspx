<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Project1.Welcome" %>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome - Sporting Club</title>
    <style>
        /* General Styles */
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: url('images/image2.jpg') no-repeat center center fixed; /* Relative path */
            background-size: cover; /* Ensures the image covers the entire screen */
            color: #333;
        }

        /* App Bar */
        .app-bar {
            background-color: #003B5C; 
            color: white;
            text-align: center;
            padding: 15px 0;
            font-size: 2.5rem;
            font-weight: bold;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        /* Hero Section */
        .hero-section {
            background-color: #F2F1F1; /* Creamy Beige */
            padding: 40px 20px;
            text-align: center;
            border-bottom: 2px solid #003B5C; /* Dark Blue separator line */
        }

        .hero-section h1 {
            font-size: 32px;
            color: #003B5C; /* Dark Blue */
            margin: 0;
        }

        .hero-section p {
            font-size: 18px;
            color: #666;
            margin-top: 10px;
        }

        /* Container for Cards */
        .container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            padding: 40px;
        }

        /* Card Styling */
        .card {
            background: white;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2);
        }

        /* Card Titles */
        .card h2 {
            font-size: 20px;
            margin-bottom: 15px;
            color: #003B5C; /* Dark Blue */
        }

        /* Card Descriptions */
        .card p {
            color: #666;
            margin-bottom: 20px;
        }

        /* Buttons */
        .card button {
            background-color: #D4AF37; /* Gold */
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .buttonlogout{
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
        .buttonlogout:hover {
            background-color: #D4AF37;
        }

        .card button:hover {
            background-color: #C49C32; /* Darker gold on hover */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .card {
                flex: 1 1 100%; /* Stack the cards vertically on smaller screens */
            }
        }
    </style>
</head>
<body>
    <!-- App Bar -->
    <div class="app-bar">Explore Our Club</div>

    <!-- Hero Section -->
   <!-- <div class="hero-section">
        <h1>Explore Our Club</h1>
        <p>Choose an option to learn more about what we offer.</p>
    </div>-->

    <!-- Container for Cards -->
    <div class="container">
        <!-- Show Sports Card -->
        <div class="card">
            <h2>Show Sports</h2>
            <p>Discover all the sports we offer.</p>
            <button onclick="location.href='Sports.aspx';">Explore Sports</button>
        </div>

        <!-- Show Events Card -->
        <div class="card">
            <h2>Show Events</h2>
            <p>Stay updated with upcoming events.</p>
            <button onclick="location.href='Events.aspx';">View Events</button>
        </div>

        <!-- Membership Card -->
        <div class="card">
            <h2>Membership</h2>
            <p>Join our club and enjoy exclusive benefits.</p>
            <button onclick="location.href='Membership.aspx';">Membership Info</button>
        </div>

        <!-- Contact Us Card -->
        <div class="card">
            <h2>Contact Us</h2>
            <p>Have questions? Get in touch with us.</p>
            <button onclick="location.href='ContactUs.aspx';">Contact Us</button>
        </div>

    </div>
    <div style="position: fixed; bottom: 20px; right: 20px;">
        <button class="buttonlogout" onclick="location.href='WelcomePage.aspx';">Log out</button>
    </div>
</body>
</html>
