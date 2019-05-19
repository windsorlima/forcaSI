package dao;

import model.EntidadeBase;

import javax.persistence.Query;
import java.util.List;

public class DaoUsuario<Usuario> extends DaoGenerico {
    public List<EntidadeBase> logar(String login, String senha, Class clazz){
        String sql = "select * from tbUsuario where login = ? and senha = ?";
        Query query = manager.createNativeQuery(sql, clazz);
        query.setParameter(1, login);
        query.setParameter(2, senha);
        return query.getResultList();
    }
}
