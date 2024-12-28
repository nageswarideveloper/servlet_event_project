<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Event</title>
<style>
    /* General Page Styles */
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f7f6;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #333;
    }

    h1 {
        text-align: center;
        color: #4CAF50;
        font-size: 40px;
        font-weight: bold;
        margin-bottom: 30px;
        text-transform: uppercase;
    }

    /* Form Container */
    .form-container {
        background-color: #fff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 600px;
        animation: slideIn 1s ease-in-out;
    }

    /* Slide-in Animation */
    @keyframes slideIn {
        0% {
            transform: translateY(50px);
            opacity: 0;
        }
        100% {
            transform: translateY(0);
            opacity: 1;
        }
    }

    /* Input Styles */
    input[type="text"] {
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 16px;
        background-color: #f9f9f9;
        transition: all 0.3s ease;
    }

    input[type="text"]:focus {
        border-color: #4CAF50;
        outline: none;
        background-color: #e9f7e1;
        box-shadow: 0 0 5px rgba(76, 175, 80, 0.5);
    }

    /* Button Styles */
    button {
        width: 100%;
        padding: 12px;
        background-color: #4CAF50;
        color: white;
        font-size: 18px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
    }

    button:hover {
        background-color: #45a049;
        transform: scale(1.05);
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    button:active {
        background-color: #388e3c;
        transform: scale(1);
        box-shadow: none;
    }

    /* Responsive Design */
    @media (max-width: 600px) {
        h1 {
            font-size: 30px;
        }

        input[type="text"], button {
            font-size: 16px;
            padding: 10px;
        }
    }
</style>
</head>
<body>
<div class="form-container">
    <h1>Update Event</h1>
    <form action="update">
<%ResultSet rs=(ResultSet)request.getAttribute("rs"); %>
        <!-- Hidden field for event ID, which cannot be edited -->
        <input type="text" name="id" value="<%=rs.getInt(1)%>" readonly="readonly">
        
        <!-- Editable fields for event details -->
        <input type="text" name="title" value="<%=rs.getString(2)%>" required placeholder="Enter event title">
        <input type="text" name="loc" value="<%=rs.getString(3)%>" required placeholder="Enter event location">
        <input type="text" name="date" value="<%=rs.getString(4)%>" required placeholder="Enter event date">
        <input type="text" name="guest" value="<%=rs.getString(5)%>" required placeholder="Enter guest name">

        <!-- Submit button -->
        <button type="submit">Update Event</button>
    </form>
</div>

</body>
</html>
