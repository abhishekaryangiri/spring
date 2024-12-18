package mpf.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mpf.dao.UserDao;
import mpf.entity.User;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Transactional
    @Override
    public User validateUser(String mobileNumber, String password) {
        return userDao.findUserByMobileAndPassword(mobileNumber, password);
    }

    @Transactional
    @Override
    public boolean resetPassword(String mobileNumber, String favoriteTeacher, String newPassword) {
        User user = userDao.findUserByMobileAndTeacher(mobileNumber, favoriteTeacher);
        if (user != null) {
            user.setPassword(newPassword);
            userDao.updateUser(user);
            return true;
        }
        return false;
    }
}
