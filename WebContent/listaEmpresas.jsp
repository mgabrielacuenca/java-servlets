<%@ page import="java.util.List,br.com.alura.gerenciador.modelo.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Lista de Empresas Cadastradas</title>
	<link rel="stylesheet" type="text/css" href="css/listaEmpresas.css">
</head>
<body>

	<main>
    <div>
		<c:if test="${not empty empresa}">
	            Empresa ${ empresa } cadastrada com sucesso!
	    </c:if>
	</div>

<p>Lista de Empresas</p>

	<ul>
		<c:forEach items="${empresas}" var="empresa">

			<li>
				${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" />
				<a href="/gerenciador/entrada?acao=mostraEmpresa&id=${empresa.id}">Editar</a>
				<a href = "/gerenciador/entrada?acao=removeEmpresa&id=${empresa.id}">Remover</a>
			</li>

		</c:forEach>
	</ul>

    </main>

</body>
</html>