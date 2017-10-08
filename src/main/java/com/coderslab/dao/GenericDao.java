package com.coderslab.dao;

import java.io.Serializable;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public abstract class GenericDao<T, ID extends Serializable> {

    @Autowired
    private SessionFactory sessionFactory;
    private T obj;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public boolean saveData(T obj) throws Exception {
        sessionFactory.getCurrentSession().save(obj);
        return true;
    }

    public boolean updateData(T obj) throws Exception {
        sessionFactory.getCurrentSession().update(obj);
        return true;
    }
    
    public boolean deleteData(T obj) throws Exception{
        sessionFactory.getCurrentSession().delete(obj);
        return true;
    }
    
    public T findData(Class c, ID id) throws Exception{
        return (T) sessionFactory.getCurrentSession().get(c, id);
    }
    
    public List<T> getAllData(Class c){
        return (List<T>) sessionFactory.getCurrentSession().createCriteria(c).list();
    }

}
