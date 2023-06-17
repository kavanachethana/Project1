<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<input type="text" id="colorInputText">

    <input type="button" id="colorButton" value="submit" onclick="changecolor()"  >


    <script>
function changecolor(){
    let color=document.getElementById('colorInputText').value;
    document.body.style.backgroundColor=color;
    document.getElementById('colorInputText').value=color;
}
    </script>

${msg}
<h1 style="color:green"></h1>
<h1>Enter your details</h1>
<form action="insert">
id:<input type="number" name="id"><br>
name:<input type="text" name="name"><br>
email:<input type="text" name="email"><br>
password:<input type="password" name="password"><br>
male:<input type="radio" name="gender" value="male"><br>
Female:<input type="radio" name="gender" value="female"><br>
country:<select name="country">

<option>INDIA</option>
<option>AMERICA</option>
<option>IRAN</option>
<option>UK</option>
<option>AUSTRALIA</option>
</select>
<br>
<input type="checkbox" name="checkbox" value="accepted">:Accepted all terms and conditions
<br>
<button type="submit">submit</button>
<button type="reset">reset</button>


</form>
</body>
</html>