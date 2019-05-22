package controller;

import dao.DaoUsuario;
import model.Usuario;
import model.UsuarioLogado;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            processRequest(request,response);
        }
        catch (Exception ex){
            request.setAttribute("Nao", "Nao deu nao");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            processRequest(request,response);
        }
        catch (Exception ex){
            request.setAttribute("Nao", "Nao deu nao");
        }
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


            Usuario usu = new Usuario();
            usu.setLogin(request.getParameter("login"));
            usu.setSenha(request.getParameter("senha"));
            PrintWriter pw = response.getWriter();
            DaoUsuario<Usuario> dU = new DaoUsuario<>();
            Usuario usuLog = (Usuario) dU.logar(usu.getLogin(), usu.getSenha(), Usuario.class).get(0);
            if (usuLog != null) {
                UsuarioLogado uL = UsuarioLogado.getInstance();
                RequestDispatcher redireciona = request.getRequestDispatcher("index.jsp");
                uL.setUser(usuLog);
                redireciona.forward(request, response);
            } else {
                RequestDispatcher redireciona = request.getRequestDispatcher("Logar.jsp");
                redireciona.forward(request, response);
            }

    }

}
