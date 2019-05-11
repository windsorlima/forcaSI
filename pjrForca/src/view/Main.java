package view;

import control.dao.DaoGenerico;
import model.Palavra;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        DaoGenerico<Palavra> pG = new DaoGenerico<Palavra>();
        Palavra p = new Palavra();
        p.setDescricao("Dedos");
        p.setDificuldade("Médio");

        pG.saveOrUpdate(p);

        System.out.println("XABLAU");
        System.out.println("XABLAU");

    }

}
