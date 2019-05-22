package dao;

import javax.persistence.Query;
import java.util.List;

public class DaoPalavra<Palavra> extends DaoGenerico {

    public Palavra sortear(Class clazz){
        String sql = "select * from tbPalavra order by rand() limit 1 ";
        Query query = manager.createNativeQuery(sql, clazz);
        return (Palavra) query.getSingleResult();
    }

    public static List listar(Class clazz){
        String sql = "select * from tbPalavra";
        Query query = manager.createNativeQuery(sql, clazz);
        return query.getResultList();
    }
}
