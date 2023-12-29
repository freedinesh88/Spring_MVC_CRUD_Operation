<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Employee</title>
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
            width: 50%;
            margin: 20px auto;
        }

        table, td {
            border: 1px solid #ddd;
        }

        td {
            padding: 10px;
        }

        input[type="submit"] {
            padding: 8px 15px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Edit Employee</h1>  

    <form:form method="POST" action="/Spring_MVC_CRUD/editsave">    
        <table>
            <!-- Hidden Field for Employee ID -->
            <tr>  
                <td></td>    
                <td><form:hidden path="id" /></td>  
            </tr>

            <!-- Employee Name -->
            <tr>    
                <td>Name :</td>   
                <td><form:input path="name" /></td>  
            </tr>    

            <!-- Employee Salary -->
            <tr>    
                <td>Salary :</td>    
                <td><form:input path="salary" /></td>  
            </tr>

            <!-- Employee Designation -->
            <tr>    
                <td>Designation :</td>    
                <td><form:input path="designation" /></td>  
            </tr>

            <!-- Edit Save Button -->
            <tr>    
                <td></td>    
                <td><input type="submit" value="Edit Save" /></td>    
            </tr>
        </table>    
    </form:form>
</body>
</html>
