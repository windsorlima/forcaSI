<%@ page import="model.UsuarioLogado" %>
<%@ page import="model.Usuario" %><%--
  Created by IntelliJ IDEA.
  User: windsor
  Date: 15/05/19
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%
    Usuario user = null;
    if(UsuarioLogado.verificaLogado()){
        user = (Usuario) request.getAttribute("UsuarioLogado");
    }%>
<header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Forca</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarColor01">
            <% if(user == null){%>
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="CadastrarUsuario.jsp">Cadastre-se <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="#"> <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="CadastrarPalavra.jsp">Cadastrar Palavra <span class="sr-only">(current)</span></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="Logar.jsp"> Logar <span class="sr-only">(current)</span></a>
                </li>

            </ul>
            <%}else if(user.getAdministrador()== 1){%>
                <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#"> Perfil <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="CadastrarUsuario.jsp">Cadastrar Usuário <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Consultar"> Consultar Usuário  <span class="sr-only">(current)</span> </a>
                </li>
                    <li class="nav-item">
                        <a class="nav-link" href="CadastrarUsuario.jsp">Cadastrar Palavra<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"> Consultar Palavra<span class="sr-only">(current)</span> </a>
                    </li>
                <li class="nav-item">
                    <a class="nav-link" href="Logar.jsp"> Bem vindo - <%=user.getNome()%> <span class="sr-only">(current)</span></a>
                </li>


            </ul>
        <%}else {%>
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Jogar <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="CadastrarUsuario.jsp">Perfil <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Ver ultimos jogos <span class="sr-only">(current)</span> </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="Logar.jsp"> Bem vindo - <%=user.getNome()%> <span class="sr-only">(current)</span></a>
                </li>


            </ul>
            <%}%>
        </div>
    </nav>
</header>