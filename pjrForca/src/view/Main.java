package view;

import dao.DaoUsuario;
import model.Usuario;

public class Main {

    public static void main(String[] args) {

        DaoUsuario dU = new DaoUsuario();
        Usuario user = new Usuario();
        user.setNome("wind1");
        user.setLogin("wind1");
        user.setSenha("senha");
        user.setAdministrador(1);
        dU.saveOrUpdate(user);

    }
}
