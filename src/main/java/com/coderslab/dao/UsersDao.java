package com.coderslab.dao;

import com.coderslab.entity.Users;
import java.io.Serializable;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class UsersDao extends GenericDao<Users, Serializable> {

    @Autowired
    private SessionFactory sessionFactory;

    public List<Users> getAllData(Users users) {
        return sessionFactory.getCurrentSession().createQuery("from Users").list();
    }

    public boolean updateUserStatus(Users users) throws Exception {
        Query query = sessionFactory.getCurrentSession().createSQLQuery("update users set status = :status where userId = :userId");
        query.setBoolean("status", users.isStatus());
        query.setInteger("userId", users.getUserId());
        query.executeUpdate();
        return true;
    }

    public Users findData(int id) throws Exception {
        return (Users) sessionFactory.getCurrentSession().get(Users.class, id);
    }

    @Override
    public boolean deleteData(Users obj) throws Exception {
        return super.deleteData(obj); //To change body of generated methods, choose Tools | Templates.
    }

    public boolean deleteUserById(int id) throws Exception {
        String sql = "delete from users where userId = :userId";
        Query query = sessionFactory.getCurrentSession().createSQLQuery(sql);
        query.setInteger("userId", id);
        query.executeUpdate();
        return true;
    }

    @Override
    public boolean updateData(Users obj) throws Exception {
        String hql = "update users set userName = :userName, role = :role where userId = :userId";
        Query query = sessionFactory.getCurrentSession().createSQLQuery(hql);
        query.setString("userName", obj.getUserName());
        query.setString("role", obj.getRole());
        query.setInteger("userId", obj.getUserId());
        query.executeUpdate();
        return true;
    }

    @Override
    public boolean saveData(Users obj) throws Exception {
        return super.saveData(obj); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setSessionFactory(SessionFactory sessionFactory) {
        super.setSessionFactory(sessionFactory); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public SessionFactory getSessionFactory() {
        return super.getSessionFactory(); //To change body of generated methods, choose Tools | Templates.
    }

}
