package view;

import control.dao.DaoGenerico;
import model.Palavra;
import model.Usuario;

import java.util.Scanner;

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
