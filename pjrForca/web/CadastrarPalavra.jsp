<%--
  Created by IntelliJ IDEA.
  User: elias
  Date: 14/05/19
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">


    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">

    <title>Title</title>
</head>
<body>
<%@include file="menu.jsp"%>
<section style="width: 65%;">

    <form action="CadastroServlet" method="POST">
        <div class="form-group">
            <label for="palavraChave">Palavra a ser Cadastrada: </label>
            <input type="text" class="form-control" id="palavraChave" name="palavraChave" aria-describedby="palavraChave" placeholder="Escreva uma Palavra" required>
        </div>
        <div class="form-group">
            <label for="dica">Dica para Palavra</label>
            <input type="text" class="form-control" id="dica" name="dica" aria-describedby="dica" placeholder="Digite uma dica" required>
        </div>
        <div class="form-group">
            <label for="dica">Grau de difiuldade</label>
            <select>
                <option> Dificuldade</option>
                <option> Fácil</option>
                <option> Médio</option>
                <option> Díficil</option>
            </select>
        </div>
        <input type="submit" value="Gravar"/>
    </form>
</section>



</body>
</html>
