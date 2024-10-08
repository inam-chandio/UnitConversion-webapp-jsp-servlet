<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Conversion Result</title>
<style>
    body { font-family: Arial, sans-serif; background-color: #f4f4f9; margin: 40px; }
    div { background-color: white; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
    h2 { color: #333; }
    a { padding: 10px 15px; background-color: #5c67f2; color: white; text-decoration: none; border-radius: 5px; }
    a:hover { background-color: #4a54e1; }
</style>
</head>
<body>
<div>
    <h2>Conversion Result</h2>
    <% if (request.getAttribute("errorMessage") != null) { %>
        <p><%= request.getAttribute("errorMessage") %></p>
    <% } else { %>
        <p>Expected Value: <%= request.getAttribute("expectedValue") %></p>
        <p>Is the student response correct? <%= request.getAttribute("isCorrect") %></p>
    <% } %>
    <a href="index.jsp">Try Another Conversion</a>
</div>
</body>
</html>
