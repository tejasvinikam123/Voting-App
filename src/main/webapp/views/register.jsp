<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{
            box-sizing: border-box;
        }
        body{
    display: flex;
    justify-content: center;
    align-items: center;
}
        #fieldset{
   border: 1px solid;
   height: 500px;
   width:500px; 
   display: flex;
   justify-content: space-evenly;
   align-items: center;
   margin-top: 100px;

}
        #form{
            width: 300px;
            height: 400px;
            font-size: 20px;
        }
        .box{
            height: 30px;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        input{
            width: 200px;
            font-size: 18px;
        }
    #legend{
    height: 50px;
    width: 300px;
    border: 1px solid;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-left: 100px;
    font-size: 20px;
}
    </style>
</head>
<body>
    <fieldset id="fieldset">
    <legend id="legend">Registration Form</legend>
	<form action="register" method="POST" id="form">
    <div  class="box">
        <br>
		<label for="userid">userid:</label>
		<input type="userid" id="userid" name="userid" required><br>
        </div>
        <br>
    <div class="box">
		<label for="username">username:</label>
		<input type="username" id="username" name="username" required>
    </div  class="box">
        <br><br>
    <div class="box">
		<label for="password">Password:</label>
		<input type="password" id="password" name="password" required>
    </div>
        <br><br>
    <div class="box">
		<label for="emailid">Email:</label>
		<input type="emailid" id="emailid" name="emailid" required>
    </div>
        <br><br>
    <div class="box">
		<label for="phoneno">phoneno:</label>
		<input type=phoneno id="phoneno" name="phoneno" required>
    </div>
        <br><br>
    <div class="box">
		<input type="submit" value="Register">
		
    </div>
	</form>
</fieldset>
</body>
</html>

</body>
</html>