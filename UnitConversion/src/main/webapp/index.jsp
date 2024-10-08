<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Unit Conversion Evaluator</title>
<style>
    body { font-family: Arial, sans-serif; background-color: #f4f4f9; margin: 40px; }
    form { background-color: white; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
    input[type="text"], input[type="submit"] { padding: 10px; margin-top: 5px; border-radius: 5px; border: 1px solid #ccc; width: 95%; }
    input[type="submit"] { background-color: #5c67f2; color: white; cursor: pointer; }
    input[type="submit"]:hover { background-color: #4a54e1; }
    h2 { color: #333; }
</style>
</head>
<body>
<h2>Unit Conversion Input</h2>
<form action="ConversionServlet" method="post">
    Input Value: <input type="text" name="inputValue" required /><br />
    Input Unit: <input type="text" name="inputUnit" required /><br />
    Target Unit: <input type="text" name="targetUnit" required /><br />
    Student Response: <input type="text" name="studentResponse" required /><br />
    <input type="submit" value="Submit" />
</form>
</body>
</html>
