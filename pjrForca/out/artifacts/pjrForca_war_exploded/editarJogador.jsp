<%@ page import="model.Usuario" %>
<%@ page import="model.UsuarioLogado" %><%--
  Created by IntelliJ IDEA.
  User: elias
  Date: 14/05/19
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Usuario usuario = (Usuario)request.getAttribute("Usuario");
%>
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
<% UsuarioLogado uL = UsuarioLogado.getInstance();
%>
<jsp:include page="<%=uL.retornaMenu()%>" />
<section>
    <div class="formularioCadastro" style="margin: 0 auto;width: 67%;">
        <form action="ConsultarJogadorServlet?acao=alterar" method="POST">
            <div class="form-group">
                <label for="exampleInputNome">Nome</label>
                <input type="text" class="form-control" id="exampleInputNome" name="nome" aria-describedby="nomelHelp" placeholder="Insira o seu Nome" value="<%=usuario.getNome()%>">
            </div>
            <div class="form-group">
                <label for="exampleInputLogin">Login </label>
                <input type="text" class="form-control" id="exampleInputLogin" name="login" aria-describedby="emailHelp" placeholder="Crie um login!" value="<%=usuario.getLogin()%>">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Senha</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="senha" value="<%=usuario.getSenha()%>">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Administrador</label>
                <select name="administrador">
                    <option value="3"> Administrador</option>
                    <option value="1"> Sim</option>
                    <option value="2"> Não</option>
                </select>
            </div>
            <input type="text" name="id" class="form-control" value="<%=usuario.getId()%>" hidden>
            <input type="submit" value="Alterar"/>

        </form>
        <button onclick="ConsultarUsuario.jsp"> Cancelar</button>
    </div>
</section>



</body>
</html>