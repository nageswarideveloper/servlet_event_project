<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
<style>
    /* General Page Styles */
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f7f6;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
        color: #333;
    }

    h1 {
        text-align: center;
        color: #4CAF50;
        font-size: 40px;
        font-weight: bold;
        margin-bottom: 40px;
        text-transform: uppercase;
    }

    /* Button Styles */
    button {
        padding: 12px 30px;
        background-color: #4CAF50;
        color: white;
        font-size: 18px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.3s ease;
        margin: 10px;
    }

    button:hover {
        background-color: #45a049;
        transform: scale(1.05);
    }

    button:active {
        background-color: #388e3c;
        transform: scale(1);
    }

    a {
        text-decoration: none;
    }

    /* Flexbox Layout */
    .container {
        text-align: center;
        padding: 30px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 80%;
        max-width: 600px;
        margin: auto;
    }

    /* Responsive Design */
    @media (max-width: 600px) {
        h1 {
            font-size: 30px;
        }

        button {
            font-size: 16px;
            padding: 10px 20px;
        }
    }

</style>
</head>
<body>

<div class="container">
    <h1>Welcome to Event Management System</h1>
    
    <a href="create.jsp"><button>Create Event</button></a>
    
    <br><br>
    
    <a href="all"><button>View All Events</button></a>
</div>

</body>
</html>
