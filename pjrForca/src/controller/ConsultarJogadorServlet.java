package controller;

import dao.DaoUsuario;
import model.Usuario;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ConsultarJogadorServlet")
public class ConsultarJogadorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        }
        catch (Exception e){

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        }
        catch (Exception e){

        }
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("acao").contains("excluir")){
            try {
                Long id = Long.parseLong(request.getParameter("id"));
                DaoUsuario dU = new DaoUsuario();
                dU.remove(Usuario.class, id);

                RequestDispatcher redireciona = request.getRequestDispatcher("ConsultarJogador.jsp");
                redireciona.forward(request,response);

            }
            catch (Exception e){

            }
        }
        if(request.getParameter("acao").contains("editar")){
            DaoUsuario dU = new DaoUsuario();
            Usuario user = (Usuario) dU.findById(Usuario.class, Long.parseLong(request.getParameter("id")));

            RequestDispatcher redirecionar = request.getRequestDispatcher("editarJogador.jsp");
            request.setAttribute("Usuario", user);
            redirecionar.forward(request,response);
        }

        if(request.getParameter("acao").contains("alterar")){
            Usuario usuario = new Usuario();
            usuario.setId(Long.parseLong(request.getParameter("id")));
            usuario.setNome(request.getParameter("nome"));
            usuario.setSenha(request.getParameter("senha"));
            usuario.setLogin(request.getParameter("login"));
            usuario.setAdministrador(Integer.parseInt(request.getParameter("administrador")));

            DaoUsuario dao = new DaoUsuario();

            dao.saveOrUpdate(usuario);

            RequestDispatcher redireciona = request.getRequestDispatcher("ConsultarJogador.jsp");
            redireciona.forward(request,response);

        }
    }

}
