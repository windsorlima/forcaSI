package view;

import dao.DaoUsuario;
import model.Usuario;

public class Main {

    public static void main(String[] args) {
        DaoUsuario<Usuario> dU = new DaoUsuario<>();
        Usuario usu  = (Usuario) dU.logar("windshow0w3", "senha", Usuario.class).get(0);
        System.out.println(usu.getSenha());
    }

}
