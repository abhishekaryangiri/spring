package mpf.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mpf.entity.User;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public User findUserByMobileAndPassword(String mobileNumber, String password) {
        Session session = sessionFactory.getCurrentSession();
        return (User) session.createQuery("FROM User WHERE mobileNumber = :mobile AND password = :pass")
                .setParameter("mobile", mobileNumber)
                .setParameter("pass", password)
                .uniqueResult();
    }

    @Override
    public User findUserByMobileAndTeacher(String mobileNumber, String favoriteTeacher) {
        Session session = sessionFactory.getCurrentSession();
        return (User) session.createQuery("FROM User WHERE mobileNumber = :mobile AND favoriteTeacher = :teacher")
                .setParameter("mobile", mobileNumber)
                .setParameter("teacher", favoriteTeacher)
                .uniqueResult();
    }

    @Override
    public void updateUser(User user) {
        sessionFactory.getCurrentSession().update(user);
    }

}

