<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Adiciona Tarefa</title>
		<link href="resources/css/tarefas.css" rel="stylesheet" /> 
	</head>
	<body>
		<a href="listaTarefas">Cancelar</a>
		<h3>Adicionar tarefas</h3>
		<form:errors path="tarefa.descricao"/>
		<form action="adicionaTarefa" method="post">
			Descri��o: <br />
			<textarea name="descricao" rows="5" cols="100"></textarea><br />
			<input type="submit" value="Adicionar">
		</form>
	</body>
</html>