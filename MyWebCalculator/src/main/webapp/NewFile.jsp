<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
	.form-content {
		width:200px;
		margin-top:20px;
	}
	.content {
		display:flex;
		justify-content: center;
		align-items: center;
		margin-top:50px;
	}
	.text-con{
		display:flex;
		justify-content: center;
		align-items: center;
		margin-top:20px;
		color:green;
	}
	.answer {
		display:flex;
		justify-content: center;
		align-items: center;
		color:green;
		margin-top:10px;
	}
	
	.image-content {
		margin-top:40px;
		display:flex;
		justify-content: center;
		align-items: center;
		
	}
	
	.imoji {
		display:flex;
		justify-content: center;
		align-items: center;
		color:yellow;
		text-align:justify;
	}
	
	.container-fluid {
		background-color:rgb(5, 5, 60);
	}
	
	img:hover,h1 {
		-ms-transform:scale(1.1);
		-webkit-transform:scale(1.1);
		transform:scale(1.1);
	}
	
	
</style>
</head>
<body class="container-fluid">
	<div class="image-content">
		<img src="image/Hi.gif" height="20%" width="20%"><br><br>
	</div>
	<div class="text-con">
		<h1>Joke of the day</h1>
	</div>
	<div class="imoji">
		<h1>😂🤣😍<%=request.getParameter("joke") %></h1>
	</div>
	<div class="content">
		<form action="MyServlet" method="Post" class="form-content">
		<input type="text" name="num1" placeholder="Number1" class="form-control" size="20">
		<br>
		<input type="text" name="num2" placeholder="Number2" class="form-control" size="20">
		<br>
		<button name="but1" class="btn btn-primary " value="1">+</button>
		<button name="but1" class="btn btn-primary " value="2">-</button>
		<button name="but1" class="btn btn-primary " value="3">*</button>
		<button name="but1" class="btn btn-primary " value="4">/</button>
	</form>
	</div>
	<div class="answer">
		<h1><%=request.getParameter("ans") %> your result👌😍😍</h1>
	</div>
</body>
</html>