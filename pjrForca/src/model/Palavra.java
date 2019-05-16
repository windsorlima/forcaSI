package model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Embeddable
@Entity
@Table(name="tbPalavra")
public class Palavra  implements EntidadeBase{
    private Long id;
    private String descricao;
    private String dificuldade;
    private String dica;
    @OneToMany(mappedBy = "palavra", orphanRemoval = true)
    private List<Forca> forcas = new ArrayList<Forca>();

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idPalavra")
    public Long getId() { return id; }
    public void setId(Long id){ this.id = id;}

    @Column(name = "descricao")
    public String getDescricao() {return descricao;}
    public void setDescricao(String descricao) {this.descricao = descricao;};

    @Column(name = "dificuldade")
    public String getDificuldade() {return dificuldade;}
    public void setDificuldade(String dificuldade) {this.dificuldade = dificuldade;}

    @Column(name = "dica")
    public String getDica() { return dica;}
    public void setDica(String dica){this.dica = dica;}

}