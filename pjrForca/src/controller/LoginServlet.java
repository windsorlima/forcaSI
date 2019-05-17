package controller;

import model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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

    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
        Usuario usu = new Usuario();
        usu.setLogin(request.getParameter("login"));
        usu.setSenha(request.getParameter("senha"));


    }


}
