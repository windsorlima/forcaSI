package model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="tbPalavra")
public class Palavra  implements EntidadeBase{
    private Long id;
    private String descricao;
    private String dificuldade;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "idPalavra")
    public Long getId() { return id; }
    public void setId(Long id){ this.id = id;}

    @Column(name = "descricao")
    public String getDescricao() {return descricao;}
    public void setDescricao(String descricao) {this.descricao = descricao;};

    @Column(name = "dificuldade")
    public String getDificuldade() {return dificuldade;}
    public void setDificuldade(String dificuldade) {this.dificuldade = dificuldade;}




}