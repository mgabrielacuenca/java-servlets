<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/entrada" var="linkEntradaServlet" />

<!DOCTYPE html>
<html>
<head>
    <title>Cadastro Empresa</title>
    <link rel="stylesheet" type="text/css" href="css/formNovaEmpresa.css"/>
    <link rel="stylesheet" href="">
</head>
<body>
    <div>
    <a class="titulo">Cadastre aqui</a>
            <legend>Nome da Empresa</legend>
            
        <form action="${linkEntradaServlet}" method="POST">   
         
        <input type="text" name="nome" required placeholder="Nome da Empresa">
        
        <legend class="data">Data Abertura</legend>
        <input type="text" name="data" required placeholder="Data">
        <input type="hidden" name="acao" value="novaEmpresa">
        <button class="enviar" type="submit">Enviar</button>
        </form>
    </div>

</body>
</html>