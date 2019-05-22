package controller;

import dao.DaoGenerico;
import model.Usuario;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "CadastroServlet")
public class CadastroServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            processRequest(request,response);
        }
        catch (SQLException ex){
            request.setAttribute("Nao", "Nao deu nao");
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        Usuario usuario = new Usuario();
        usuario.setNome(request.getParameter("nome"));
        usuario.setSenha(request.getParameter("senha"));
        usuario.setLogin(request.getParameter("login"));
        usuario.setAdministrador(2);

        DaoGenerico<Usuario> dao = new DaoGenerico<Usuario>();

        dao.saveOrUpdate(usuario);

        RequestDispatcher redireciona = request.getRequestDispatcher("CadastrarUsuario.jsp");
        redireciona.forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            processRequest(request,response);
        }
        catch (SQLException ex){
            request.setAttribute("Nao", "Nao deu nao");
        }
    }
}
