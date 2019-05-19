package model;

public class UsuarioLogado extends Usuario {
    private static UsuarioLogado instance;

    public  static UsuarioLogado getInstance(){
        if(instance == null)
            instance = new UsuarioLogado();

        return instance;
    }


    public static boolean verificaLogado(){
        if(instance != null)
            return true;
        return false;
    }
    private UsuarioLogado(){

    }


}
