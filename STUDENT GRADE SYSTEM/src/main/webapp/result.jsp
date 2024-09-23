<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Result</title>
    <link rel="stylesheet" href="css/styles.css">
    <style>
        /* General Body Styling */
        body {
            background-color: #f0f8ff; /* Light Blue Background */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* 3D Effect for Result Container */
        .result-container {
            width: 400px;
            padding: 30px;
            background-color: #ffffff; /* White Background */
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15); /* 3D Effect */
            text-align: center;
            animation: fadeIn 1.2s ease-in-out;
        }

        /* 3D Button Styling */
        .home-button {
            background-color: #6dd5fa; /* Light Blue */
            border: none;
            padding: 12px 20px;
            margin-top: 20px;
            color: black;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
            box-shadow: 0 8px 10px rgba(0, 0, 0, 0.2); /* 3D Shadow */
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        /* Button Hover Animation */
        .home-button:hover {
            transform: translateY(-4px); /* 3D Lift Effect */
            box-shadow: 0 12px 20px rgba(0, 0, 0, 0.3);
        }

        /* Heading Styling */
        h2 {
            color: #4caf50; /* Green Color */
        }

        /* Paragraph Styling */
        p {
            font-size: 18px;
            color: #333;
        }

        /* Keyframes for Fade-in Effect */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.8);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        /* Background Animation (optional) */
        body:before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(45deg, #a1c4fd, #c2e9fb); /* Gradient Background */
            z-index: -1;
            animation: gradientMove 5s infinite alternate;
        }

        @keyframes gradientMove {
            0% { background-position: 0% 50%; }
            100% { background-position: 100% 50%; }
        }
    </style>
</head>
<body>
    <div class="result-container">
        <h2>Grade Result</h2>
        <p>Student Name: <strong><%= request.getAttribute("studentName") %></strong></p>
        <p>Grade: <strong><%= request.getAttribute("grade") %></strong></p>
        <p>Thought: <em><%= request.getAttribute("thought") %></em></p>
        
        <!-- Home Button -->
        <form action="index.html" method="get">
            <button class="home-button">Home</button>
        </form>
    </div>
</body>
</html>
