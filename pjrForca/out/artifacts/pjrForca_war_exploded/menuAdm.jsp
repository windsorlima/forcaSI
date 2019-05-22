<%@ page import="model.UsuarioLogado" %>
<%@ page import="model.Usuario" %><%--
  Created by IntelliJ IDEA.
  User: windsor
  Date: 15/05/19
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%
    UsuarioLogado uL = UsuarioLogado.getInstance();

%>
<header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Forca</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarColor01">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Jogar<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="CadastrarUsuario.jsp">Cadastrar Usuario <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ConsultarJogador.jsp"> Consultar Usuario  <span class="sr-only">(current)</span> </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="CadastrarPalavra.jsp">Cadastrar Palavra<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ConsultarPalavra.jsp"> Consultar Palavra<span class="sr-only">(current)</span> </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" > Bem vindo - <%=uL.getUser().getNome()%> <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="DeslogarServlet"> Sair <span class="sr-only">(current)</span></a>
                </li>

            </ul>
        </div>
    </nav>
</header>