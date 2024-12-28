<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Events Page</title>
<style>
    /* General Page Styles */
    body {
        font-family: 'Arial', sans-serif;
        background-color: #eaeaea;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #333;
        overflow: hidden;
    }

    h1 {
        text-align: center;
        color: #4CAF50;
        font-size: 36px;
        font-weight: bold;
        margin-bottom: 30px;
        text-transform: uppercase;
        letter-spacing: 2px;
    }

    /* Table Styles */
    table {
        width: 90%;
        max-width: 1200px;
        border-collapse: collapse;
        margin: auto;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 15px;
        text-align: center;
        font-size: 18px;
        border-bottom: 2px solid #ddd;
        transition: background-color 0.3s ease;
    }

    th {
        background-color: #4CAF50;
        color: white;
        font-size: 20px;
        text-transform: uppercase;
    }

    td {
        background-color: #f9f9f9;
        color: #333;
        font-weight: normal;
    }

    /* Zebra Stripe Effect */
    tr:nth-child(even) td {
        background-color: #f1f1f1;
    }

    /* Hover Effect for Rows */
    tr:hover td {
        background-color: #e2f7d3;
        cursor: pointer;
    }

    /* Button Styling */
    button {
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    button:hover {
        background-color: #45a049;
    }

    /* Action Column Button Alignment */
    td a {
        text-decoration: none;
    }

    /* Centering the table on the page */
    .table-container {
        width: 90%;
        max-width: 1200px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    /* Additional style for table when it is first loaded */
    .table-container table {
        animation: fadeIn 1s ease-in-out;
    }

    /* Fade-in Animation */
    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }
</style>
</head>
<body>

<div class="table-container">
    <h1>All Event Details</h1>

    <table>
        <tr>
            <th>Id</th>
            <th>Title</th>
            <th>Location</th>
            <th>Date</th>
            <th>Guest</th>
            <th colspan="2">Action</th>
        </tr>

        <%
        ResultSet rs = (ResultSet) request.getAttribute("rs");
        while (rs.next()) {
        %>
        <tr>
            <td><%=rs.getInt(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><a href="del?id=<%=rs.getInt(1)%>"><button>Delete</button></a></td>
            <td><a href="updatepage?id=<%=rs.getInt(1)%>"><button>Update</button></a></td>
        </tr>
        <%
        }
        %>

    </table>
</div>

</body>
</html>
