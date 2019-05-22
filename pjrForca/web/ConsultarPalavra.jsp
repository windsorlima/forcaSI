<%@ page import="dao.DaoPalavra" %>
<%@ page import="model.Palavra" %>
<%@ page import="model.UsuarioLogado" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: gmoreli
  Date: 19/05/19
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%     List<Palavra> palavras =  new ArrayList<>();
    palavras = DaoPalavra.listar(Palavra.class);%>
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

    <title>Pesquisar Palavra</title>
</head>
<body>
    <% UsuarioLogado uL = UsuarioLogado.getInstance();
%>
<jsp:include page="<%=uL.retornaMenu()%>" />
<div>

        <table class="formularioCadastro" style="margin: 0 auto;width: 67%; margin-top: 30px;   ">
            <tr>
                <th style="padding-right: 30px;"> ID </th>
                <th style="padding-right: 30px;"> Descricao </th>
                <th style="padding-right: 30px;"> Dica </th>
                <th style="padding-right: 30px;"> Dificuldade </th>
                <th style="padding-right: 30px;"> Editar</th>
                <th> Excluir</th>
            </tr>
            <% for(Palavra palavra : palavras){%>
            <tr>
                <td><%=palavra.getId()%></td>
                <td><%=palavra.getDescricao()%></td>
                <td><%=palavra.getDica()%></td>
                <td><%=palavra.getDificuldade()%></td>
                <td> <a href="ConsultarPalavraServlet?acao=editar&id=<%=palavra.getId()%>">Editar</a> </td>
                <td> <a href="ConsultarPalavraServlet?acao=excluir&id=<%=palavra.getId()%>">Excluir</a> </td>
            </tr>
            <%}%>
        </table>


    </div>
    </section>
</body>
</html>
