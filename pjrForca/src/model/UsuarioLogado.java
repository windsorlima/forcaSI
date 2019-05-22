package model;

public class UsuarioLogado extends Usuario {
    private static UsuarioLogado instance;
    private Usuario user;

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

    public String retornaMenu(){
        if(user == null)
            return "menu.jsp";
        else if(user.getAdministrador() == 1)
            return "menuAdm.jsp";
        else if(user.getAdministrador() == 2)
            return "menuJog.jsp";

        return "menu.jsp";
    }

    public void setUser(Usuario user){
        this.user = user;
    }

    public Usuario getUser(){
        return user;
    }

    public void sair(){
        instance = null;
    }
}
