<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.mvc.model.Employee" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employees List</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
            text-align: center;
        }

        h1 {
            color: #333;
        }

        table {
            border-collapse: collapse;
            width: 70%;
            margin: 20px auto;
        }

        table, th, td {
            border: 2px solid #ddd;
        }

        th, td {
            padding: 10px;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        a.button {
            display: inline-block;
            padding: 8px 15px;
            margin: 5px;
            text-decoration: none;
            color: #fff;
            background-color: #4CAF50;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        a.button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Employees List</h1>  

    <table border="2">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Salary</th>
            <th>Designation</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>

        <%
            List<Employee> list = (List<Employee>) request.getAttribute("list");
            for (int i = 0; i < list.size(); i++) {
                Employee emp = list.get(i);
        %>
            <tr>
                <td><%= emp.getId() %></td>
                <td><%= emp.getName() %></td>
                <td><%= emp.getSalary() %></td>
                <td><%= emp.getDesignation() %></td>
                <td><a class="button" href="editemp/<%= emp.getId() %>">Edit</a></td>
                <td><a class="button" href="deleteemp/<%= emp.getId() %>">Delete</a></td>
            </tr>
        <%
            }
        %>
    </table>

    <br/>
    <a class="button" href="empform">Add New Employee</a>
</body>
</html>
