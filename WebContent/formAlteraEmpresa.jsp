<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
<c:url value="/entrada" var="linkEntradaServlet"/>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UFT-8">
<title>Alterar Empresa</title>
</head>
<body>

	<form action="${linkEntradaServlet}" method="POST">
	
		Nome: <input type="text" name="nome" value="${empresa.nome}"/> 
		<br/>
		Data Abertura: <input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>"/>
		
		<input type="hidden" name="id" value="${empresa.id }">
		
		<input type="hidden" name="acao" value="alteraEmpresa">
		
		<button type="submit">Enviar</button>
		
	</form>
	
</body>
</html>