<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${valid }
<form  action="voting" >
<label for="age">voterId:</label>
		<input type="number" id="userid" name="userid" required><br><br>
		<label>vote:</label><br>
		<label>
			<input type="radio" name="vote" value="1">
			candidate1
		</label><br>
		<label>
			<input type="radio" name="vote" value="2">
			candidate2
		</label><br>
		<label>
			<input type="radio" name="vote" value="3">
			candidate3
		</label><br>
		<label>
			<input type="radio" name="vote" value="4">
			candidate4
		</label><br><br>
		<input type="submit" value="voting">
</form>
</body>
</html>