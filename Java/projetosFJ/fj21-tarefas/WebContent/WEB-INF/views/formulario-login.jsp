<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="resources/css/tarefas.css" rel="stylesheet" /> 
	<link href="resources/css/jquery-ui.css" rel="stylesheet">
	<title>Login</title>
	</head>
	<body>
		<h2>Cadastro de Tarefas</h2>
		<form action="efetuaLogin" method="post">
			Login: <input type="text" name="usuario" /> <br />
			Senha: <input type="password" name="senha" /> <br />
			<input type="submit" value="Entrar" />
		</form>
	</body>
</html>