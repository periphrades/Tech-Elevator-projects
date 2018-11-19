package com.techelevator.npgeek.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCWeatherDAO implements WeatherDAO {
	
	private JdbcTemplate template;
	
	@Autowired
	public JDBCWeatherDAO(DataSource dataSource) {
		this.template = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Weather> getParkForecast(String parkCode, String scale) {
		
		
		String sql = "SELECT fivedayforecastvalue, low, high, forecast FROM weather WHERE parkcode = ? ORDER BY fivedayforecastvalue";
		
		SqlRowSet result = template.queryForRowSet(sql, parkCode);
		
		List<Weather> fiveDayWeather = new ArrayList<Weather>();
		
		while(result.next()) {
			
			Weather dayInfo = mapRowSetToWeather(result, scale);
			
			fiveDayWeather.add(dayInfo);
			
		}
		
		return fiveDayWeather;
	}

	private Weather mapRowSetToWeather(SqlRowSet result, String scale) {
		
		Weather dayInfo = new Weather();
		
		int low = result.getInt("low");
		int high = result.getInt("high");
		String forecast = result.getString("forecast");
		String imageName  = forecast + ".png";
		if (forecast.equals("partly cloudy")) {
			imageName = "partlyCloudy.png";
		}
		
		int lo = low;
		int hi = high;
		
		if (scale.equals("C")) {
			
			lo = FahrenheitToCelcius(low);
			hi = FahrenheitToCelcius(high);
			
		} 
			
			dayInfo.setLow(lo);
			dayInfo.setHigh(hi);
			dayInfo.setForecast(forecast);
			dayInfo.setImageFile(imageName);;
		
		List<String> messages = new ArrayList<String>();	
		
		switch (forecast) {
		
			case "snow":
				messages.add("Pack snowshoes!");
				break;
			case "rain":
				messages.add("Pack rain gear and wear waterproof shoes!");
				break;
			case "thunderstorms":
				messages.add("Seek shelter and avoid hiking on exposed ridges!");
				messages.add("Pack rain gear and wear waterproof shoes!");
				break;
			case "sunny":
				messages.add("Pack sunblock!");
				break;
		}
		

		if (high > 75) {
			messages.add("Bring an extra gallon of water!");
		}
		
		
		if (low < 20) {
			messages.add("Exposure to frigid temperatures may be dangerous today!");
		}
		
		if ( (high - low) > 20 ) {
			messages.add("Wear breathable layers!");
		}
		
		dayInfo.setWarnings(messages);
		
		return dayInfo;
	}

	private int FahrenheitToCelcius(int fahr) {
		
		return (fahr - 32) * 5 / 9;
		
	}
	
}
