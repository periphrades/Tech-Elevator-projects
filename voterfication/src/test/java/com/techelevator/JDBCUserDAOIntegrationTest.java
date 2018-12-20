package com.techelevator;

import static org.junit.Assert.*;
import org.junit.Before;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;
import com.techelevator.model.JDBCUserDAO;
import com.techelevator.model.User;
import com.techelevator.security.PasswordHasher;

public class JDBCUserDAOIntegrationTest extends DAOIntegrationTest{
	
	private JDBCUserDAO jdbcUserDAO;
	private JdbcTemplate jdbcTemplate;
	private PasswordHasher hashMaster = new PasswordHasher();

	
	@Before
	public void setup() {
		
		jdbcTemplate = new JdbcTemplate(getDataSource());
		jdbcUserDAO = new JDBCUserDAO(getDataSource(), hashMaster);
		jdbcTemplate.update("DELETE FROM question_recipient");
		jdbcTemplate.update("DELETE FROM question");
		jdbcTemplate.update("DELETE FROM app_user");
		
	}

	@Test
	public void test_save_user() {
		User expected = createUser("bleder", "user");
		
		jdbcUserDAO.saveUser("bleder", "Iamabadpasswordandwillmakeyousad");
		Object actual = jdbcUserDAO.getUserByUserName("bleder");
		User actualUser = (User) actual;
		
		assertObjectsAreEqual(expected, actualUser);
		
	}
	
	@Test
	public void test_get_user_by_id() {
		String sqlInsertUser1 = "INSERT INTO app_user(id, user_name, password, salt) VALUES(22, 'bigvoter', 'thisisabadpassword', '9545h7w87bwe8robnuei')";
		jdbcTemplate.update(sqlInsertUser1);
		User expected = createUser("bigvoter", "user");
		
		Object actual = jdbcUserDAO.getUserById(22);
		User actualUser = (User) actual;
		
		assertObjectsAreEqual(expected, actualUser);
		
	}
	
	
	
	private void assertObjectsAreEqual(User expected, User actual) {
		assertEquals(expected.getUserName(), actual.getUserName());
		assertEquals(expected.getRole(), actual.getRole());
	}
	
	private User createUser(
			String userName,
			String role) {
		User user = new User();
		user.setUserName(userName);
		user.setRole(role);

		return user;
	}

}
