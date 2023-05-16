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
#home{
   border: 1px solid;
   height: 400px;
   width:500px; 
   display: flex;
   justify-content: space-evenly;
   align-items: center;
   margin-top: 100px;

}

.button{
    height:40px;
    width: 100px;
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
    <fieldset id="home">
        <legend id="legend">Online Voting App</legend>
           
            <form method="get"
                action="${pageContext.request.contextPath}/login">
                <button type="submit" class="button">Login</button>
            </form>
        
        
            <form method="get"
                action="${pageContext.request.contextPath}/register">
                <button type="submit" class="button">Register</button>
        
        
            </form>
        </fieldset>
</body>
</html>

