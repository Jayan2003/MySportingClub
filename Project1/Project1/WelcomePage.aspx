<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="Project1.WelcomePage" %>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome - Sporting Club</title>
    <style>
        /* General Styles */
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: url('images/image2.jpg') no-repeat center center fixed; /* Background image */
            background-size: cover; /* Ensures the image covers the entire screen */
            color: #333;
        }

        /* App Bar */
        .app-bar {
            background-color: #2A3C4F; 
            color: white;
            text-align: center;
            padding: 15px 0;
            font-size: 24px;
            font-weight: bold;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        /* Hero Section */
        .hero-section {
            background-color: #ffffff; 
            padding: 40px 20px;
            text-align: center;
            border-bottom: 2px solid #004d26; /* Dark green separator line */
        }

        .hero-section h1 {
            font-size: 32px;
            color: #000000; 
            margin: 0;
        }

        .hero-section p {
            font-size: 18px;
            color: #666;
            margin-top: 10px;
        }

        /* Container for Cards */
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 40px;
        }

        /* Card Styling */
        .card {
            background: white;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            width: 300px;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.3);
        }

        /* Card Titles */
        .card h2 {
            font-size: 20px;
            margin-bottom: 15px;
            color: #000000; 
        }

        /* Card Descriptions */
        .card p {
            color: #666;
            margin-bottom: 20px;
        }

        /* Buttons */
        .card button {
            background-color: #D4AF37; 
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .card button:hover {
            background-color: #C49C32; 
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .card {
                width: 100%;
                max-width: 300px;
            }
        }
    </style>
</head>
<body>
    <!-- App Bar -->
    <div class="app-bar">Welcome to the Sporting Club</div>

    <!-- Hero Section -->
    <div class="hero-section">
        <h1>Join Our Community</h1>
        <p>Choose an option to get started.</p>
    </div>

    <!-- Container for Cards -->
    <div class="container">
        <!-- Sign Up Card -->
        <div class="card">
            <h2>Sign Up</h2>
            <p>Create a new account to join the club.</p>
            <button onclick="location.href='SignUp.aspx';">Sign Up</button>
        </div>

        <!-- Login Card -->
        <div class="card">
            <h2>Login</h2>
            <p>Access your account to explore our services.</p>
            <button onclick="location.href='Login.aspx';">Login</button>
        </div>
    </div>
</body>
</html>
