<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Time Validator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .form-container {
            max-width: 300px;
            margin: 0 auto;
        }
        .result {
            margin-top: 20px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Time Validator</h1>
        <form method="post" action="validateTime.jsp">
            <label for="time">Enter time (HH:MM:SS):</label><br>
            <input type="text" id="time" name="time" required><br><br>
            <input type="submit" value="Validate">
        </form>
        
        <%
            // Java code to validate the time input
            String time = request.getParameter("time");
            if (time != null) {
                boolean isValid = time.matches("([01]?[0-9]|2[0-3]):[0-5]?[0-9]:[0-5]?[0-9]");
                
                if (isValid) {
                    out.println("<div class='result' style='color: green;'>The time " + time + " is valid.</div>");
                } else {
                    out.println("<div class='result' style='color: red;'>The time " + time + " is invalid. Please enter in HH:MM:SS format.</div>");
                }
            }
        %>
    </div>
</body>
</html>
