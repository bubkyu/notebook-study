package kr.or.iei;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import kr.or.iei.domain.User;
import kr.or.iei.repository.UserRepository;

@SpringBootApplication
public class SpringMybatisExample1126Application {

	public static void main(String[] args) {
		SpringApplication.run(SpringMybatisExample1126Application.class, args);
	}

	@Autowired
	private UserRepository userRepository;

	@Bean
	public void test() {
		
		//5. delete
		int affectedRows = userRepository.deleteUser(4);
		System.out.println(affectedRows);
		
		
		
		//4. update
//		final User user = userRepository.findById(1);
//		user.setEmail("ajdkdj@djkfldd.com");
//		userRepository.updateUser(user);
		
		
		
		//2. read
//		User user = userRepository.findById(1);
//		System.out.println(userRepository.findById(1));
		//3. read list
//		System.out.println(userRepository.findAll());
		
		
		//1. create
//		User user = new User();
////		user.setId(1L); //long 표시
//		user.setEmail("test1234@gmail.com");
//		user.setPassword("1234abcd");
//		user.setJoinedDate(LocalDateTime.now());
//		
////		user.setId(2L); //long 표시
//		user.setEmail("test1235@gmail.com");
//		user.setPassword("1234abcd");
//		user.setJoinedDate(LocalDateTime.now());
//		userRepository.createUser(user);
	}
}
