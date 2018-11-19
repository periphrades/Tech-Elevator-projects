package com.techelevator;

import java.util.List;

import javax.sql.DataSource;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.jdbc.core.JdbcTemplate;

import com.techelevator.npgeek.model.JDBCWeatherDAO;
import com.techelevator.npgeek.model.Weather;
import com.techelevator.npgeek.model.WeatherDAO;


public class JDBCWeatherDAOIntegrationTest extends DAOIntegrationTest{
	
	private WeatherDAO weatherDAO;
	private DataSource dataSource = super.getDataSource();
	private JdbcTemplate template = new JdbcTemplate(dataSource);

	@Before
	public void setUp() {
		weatherDAO = new JDBCWeatherDAO(dataSource);
		
		String sql = "INSERT INTO park VALUES ('RNP', 'Renner National Park', 'OH', "
				+ "1400, 200, 50.0, 10, 'wonderful', 2018, 450000, 'wonderful', 'Kevin Hawthorne', 'blah blah', 60, 450)";
		
		template.update(sql);
		
		sql = "INSERT INTO weather VALUES ('RNP', 1, 65, 79, 'sunny')";
		template.update(sql);
		
		sql = "INSERT INTO weather VALUES ('RNP', 2, 17, 22, 'cloudy')";
		template.update(sql);
		
		sql = "INSERT INTO weather VALUES ('RNP', 3, 40, 67, 'thunderstorms')";
		template.update(sql);
		
		sql = "INSERT INTO weather VALUES ('RNP', 4, 65, 74, 'snow')";
		template.update(sql);
		
		sql = "INSERT INTO weather VALUES ('RNP', 5, 65, 74, 'rain')";
		template.update(sql);
		
	}
	
	@Test
	public void returnsHotMessage() {
		
		List<Weather> forecast = weatherDAO.getParkForecast("RNP", "F");
		
		List<String> messages = forecast.get(0).getWarnings();
		
		Assert.assertTrue( messages.contains("Bring an extra gallon of water!") );
		
	}
	
	@Test
	public void returnsColdMessage() {
		
		List<Weather> forecast = weatherDAO.getParkForecast("RNP", "F");
		
		List<String> messages = forecast.get(1).getWarnings();
		
		Assert.assertTrue(messages.contains("Exposure to frigid temperatures may be dangerous today!"));
		
	}
	
	@Test
	public void returnsRangeMessage() {
		
		List<Weather> forecast = weatherDAO.getParkForecast("RNP", "F");
		
		List<String> messages = forecast.get(2).getWarnings();
		
		Assert.assertTrue(messages.contains("Wear breathable layers!"));
		
	}
	
	@Test
	public void returnsForecastMessage() {
		
		List<Weather> forecast = weatherDAO.getParkForecast("RNP", "F");
		
		List<String> messages = forecast.get(2).getWarnings();
		
		Assert.assertTrue(messages.contains("Seek shelter and avoid hiking on exposed ridges!") );
		Assert.assertTrue(messages.contains("Pack rain gear and wear waterproof shoes!"));
		
	}
	
	@Test
	public void returnsCelsius() {
		
		List<Weather> forecast = weatherDAO.getParkForecast("RNP", "C");
		
		int temp = forecast.get(4).getLow();
		
		int subZero = forecast.get(1).getLow();
		
		Assert.assertTrue(temp == 18 );
		Assert.assertTrue(subZero == -8 );
		
		
	}
	
	
}
