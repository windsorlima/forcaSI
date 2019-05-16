package view;

import dao.DaoGenerico;
import model.Usuario;

public class Main {

    public static void main(String[] args) {
        DaoGenerico<Usuario> dU = new DaoGenerico<Usuario>();
        Usuario user = new Usuario();
        user.setNome("Windshow");
        user.setLogin("windshow0w3");
        user.setSenha("senha");
        dU.saveOrUpdate(user);
    }

}
