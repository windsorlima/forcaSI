package model;

import org.hibernate.annotations.ForeignKey;

import javax.persistence.*;

@Entity
@Table(name="tbForca")
public class Forca implements EntidadeBase{
    public Long id;
    public Usuario jogador = new Usuario();
    public Palavra palavra = new Palavra();
    public String terminado;
    public String tempo;
    public String ranking;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "idForca")
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    @ManyToOne
    @JoinColumn(name = "usuario")
    @ForeignKey(name = "usuario_fk")
    public Usuario getJogador() { return jogador; }
    public void setJogador(Usuario jogador) { this.jogador = jogador; }


    @ManyToOne
    @JoinColumn(name = "palavra")
    @ForeignKey(name = "palavra_fk")
    public Palavra getPalavra() { return palavra; }
    public void setPalavra(Palavra palavra) { this.palavra = palavra; }

    @Column(name = "terminado")
    public String getTerminado() { return terminado; }
    public void setTerminado(String terminado) { this.terminado = terminado; }

    @Column(name = "tempo")
    public String getTempo() { return tempo; }
    public void setTempo(String tempo) { this.tempo = tempo; }

    @Column(name = "ranking")
    public String getRanking() { return ranking; }
    public void setRanking(String ranking) { this.ranking = ranking; }


}
