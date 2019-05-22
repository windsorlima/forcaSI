package model;


import javax.persistence.*;


@Entity
@Table(name="tbUsuario")
public class Usuario implements EntidadeBase {
    private Long id;
    private String nome;
    private String login;
    private String senha;
    private int administrador;



    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idUsuario")
    public Long getId(){return id;}
    public void setId(Long id) {this.id = id;}

    @Column(name = "nome")
    public String getNome(){return nome;}
    public void setNome(String nome){this.nome = nome;}

    @Column(name = "login")
    public String getLogin(){return login;}
    public void setLogin(String login){this.login = login;}

    @Column(name = "senha")
    public String getSenha(){return senha;}
    public void setSenha(String senha){this.senha = senha;}

    @Column(name = "adm")
    public int getAdministrador() {return administrador;}
    public void setAdministrador(int administrador){this.administrador = administrador;}


}
