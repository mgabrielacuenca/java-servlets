<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/novaEmpresa" var="linkServletNovaEmpresa" />

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
            
        <form action="${linkServletNovaEmpresa}" method="POST">   
         
        <input type="text" name="nome" required placeholder="Nome da Empresa">
        
        <legend class="data">Data Abertura</legend>
        <input type="text" name="data" required placeholder="Data">
        <button class="enviar" type="submit">Enviar</button>
        </form>
    </div>

</body>
</html>