package springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springmvc.dao.UserDao;
import springmvc.model.User;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	public int createUser(User user) {
		return this.userDao.saveUser(user);
	}
}
//createUser method ko controller se v call krna h

//yaha jaise hi create user mtd call hoga ,y call krlega userdao ka saveUser wala method ko aur saveuser wala method user ho hibbernate templ me user ko  save kr dega -> then userService ko controller me call kr lenge-> then controller k form page method me   this,userService.createUser(user) ko call kr lengge.. bs 