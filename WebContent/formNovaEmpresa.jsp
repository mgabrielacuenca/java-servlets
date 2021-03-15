<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/novaEmpresa" var="linkServletNovaEmpresa" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastrar Empresa</title>
</head>

<body>

	<form action="${linkServletNovaEmpresa}" method="POST">

		Nome: <input type="text" name="nome">
		<br/>
		Data Abertura: <input type="text" name="data">

		<button type="submit">Enviar</button>

	</form>

</body>
</html>