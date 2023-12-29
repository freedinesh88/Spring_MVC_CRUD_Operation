<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Add New Employee</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
        }
        
        h1 {
            color: #333;
        }

        table {
            border-collapse: collapse;
            width: 50%;
            margin-top: 20px;
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
    <h1>Add New Employee</h1>  

    <form:form method="post" action="save">    
        <table>
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

            <!-- Save Button -->
            <tr>    
                <td></td>    
                <td><input type="submit" value="Save" /></td>    
            </tr>
        </table>    
    </form:form>
</body>
</html>
