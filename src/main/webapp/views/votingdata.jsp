<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
          #fieldset{
   border: 1px solid;
   height: 300px;
   width:500px; 
   display: flex;
   justify-content: space-evenly;
   align-items: center;
   margin-top: 100px;

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
#box{
    width: 400px;
    height: 300px;
    display: flex;
    align-items:center;
    justify-content: space-evenly;
    font-size: 20px;
}
body{
    display: flex;
    justify-content: center;
    align-items: center;
}
    </style>
</head>
<body>
    <fieldset id="fieldset">
        <legend id="legend">Admin Login</legend>
    <table id="box">
	 <tr>
    <th>Candidate Name</th>
    <th>vote count</th>
    </tr>
<tr style="height: 20px;"></tr>
<tr>
	<td>Candidate 1 = </td>
    <td>${candidateOne}</td>
</tr>
<tr>
	<td>Candidate 2 = </td>
    <td>${candidateTwo}</td>
    <br>
</tr>
	<td>Candidate 3 = </td>
    <td>${candidateThree}</td>
    <br>
<tr>
	<td>Candidate 4 = </td>
    <td>${candidateFour}</td>
    <br>
</tr>
</table>
	</table>
</fieldset>
</body>
</html>