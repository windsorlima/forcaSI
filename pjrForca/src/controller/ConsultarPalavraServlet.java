package controller;

import dao.DaoPalavra;
import model.Palavra;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ConsultarPalavraServlet")
public class ConsultarPalavraServlet extends HttpServlet {
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
                DaoPalavra dU = new DaoPalavra();
                dU.remove(Palavra.class, id);

                RequestDispatcher redireciona = request.getRequestDispatcher("ConsultarPalavra.jsp");
                redireciona.forward(request,response);

            }
            catch (Exception e){

            }
        }
        if(request.getParameter("acao").contains("editar")){
            DaoPalavra dU = new DaoPalavra();
            Palavra palavra = (Palavra) dU.findById(Palavra.class, Long.parseLong(request.getParameter("id")));

            RequestDispatcher redirecionar = request.getRequestDispatcher("editarPalavra.jsp");
            request.setAttribute("Palavra", palavra);
            redirecionar.forward(request,response);
        }

        if(request.getParameter("acao").contains("alterar")){
            Palavra palavra = new Palavra();
            palavra.setId(Long.parseLong(request.getParameter("id")));
            palavra.setDescricao(request.getParameter("descricao"));
            palavra.setDica(request.getParameter("dica"));
            palavra.setDificuldade(request.getParameter("dificuldade"));

            DaoPalavra dao = new DaoPalavra();
            dao.saveOrUpdate(palavra);

            RequestDispatcher redireciona = request.getRequestDispatcher("ConsultarPalavra.jsp");
            redireciona.forward(request,response);

        }
    }
}
