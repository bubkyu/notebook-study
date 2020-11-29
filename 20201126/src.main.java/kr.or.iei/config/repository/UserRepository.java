package kr.or.iei.repository;


import java.util.List;

import kr.or.iei.domain.User;

public interface UserRepository {
	
	//1.create
	int createUser(User user);
	
	//2&3.read
	User findById(long id); //selectOne()
	List<User> findAll();
	
	//4.update
	int updateUser(User user);
	
	//5.delete
	int deleteUser(long id);
}
