<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>



<style>

* {
	box-sizing: border-box;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
}
<center>${vote}</center>
#form {
	width: 500px;
	height: 300px;
	font-size: 20px;
}

.box {
	height: 30px;
	width: 100%;
	display: flex;
	justify-content: space-evenly;
	align-items: center;
}

#fieldset {
	border: 1px solid;
	height: 400px;
	width: 500px;
	display: flex;
	justify-content: space-evenly;
	align-items: center;
	margin-top: 100px;
}

#legend {
	height: 50px;
	width: 300px;
	border: 1px solid;
	display: flex;
	justify-content: center;
	align-items: center;
	margin-left: 100px;
	font-size: 20px;
}
<center>${vote}</center>
.button {
	height: 40px;
	width: 100px;
	font-size: 18px;
}

</style>

</head>

<body>

<aligned="center">
<h1>${vote}</h1>
	<fieldset id="fieldset">

		<legend id="legend">Login</legend>
		<form action="loginCheck" id="form">
			<center>${reg}</center>
			<div class="box">
				<label for="email">Email:</label> <input type="email" id="email"
					name="email" required>
			</div>
			<br>&nbsp<br>
			<div class="box">
				<label for="password">Password:</label> <input type="password"
					id="password" name="password" required>
			</div>
			<br>
			<br>
			<div class="box">

				<form method="get"
					action="${pageContext.request.contextPath}/votingOne">
					<button type="submit" class="button">Login</button>
				</form>	
			</div>
	
</form>


		</div>


	</fieldset>


		<h1 align="center">${invalid}</h1>
</body>

</html>

