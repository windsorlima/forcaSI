package controller;

import dao.DaoGenerico;
import model.Palavra;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CadastroPalavraServlet")
public class CadastroPalavraServlet extends HttpServlet {
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
        Palavra palavra = new Palavra();

        palavra.setDescricao(request.getParameter("palavraChave"));
        palavra.setDificuldade(request.getParameter("dificuldade"));
        palavra.setDica(request.getParameter("dica"));

        DaoGenerico<Palavra> dP = new DaoGenerico<Palavra>();
        dP.saveOrUpdate(palavra);

        RequestDispatcher redireciona = request.getRequestDispatcher("CadastrarPalavra.jsp");
        redireciona.forward(request,response);
    }


}
