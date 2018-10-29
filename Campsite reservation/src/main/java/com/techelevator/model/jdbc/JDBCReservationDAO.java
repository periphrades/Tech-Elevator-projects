package com.techelevator.model.jdbc;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.techelevator.model.Reservation;
import com.techelevator.model.ReservationDAO;
import com.techelevator.model.Site;

public class JDBCReservationDAO implements ReservationDAO {
	
	private JdbcTemplate template;
	
	public JDBCReservationDAO(DataSource datasource) {
		template = new JdbcTemplate(datasource);
	}
	
//	@Override
//	public List<Reservation> getAllReservations() {
//		
//		List<Reservation> reservations = new ArrayList<Reservation>();
//		
//		String sql = "SELECT * FROM reservation";
//		SqlRowSet results = template.queryForRowSet(sql);
//		
//		while (results.next()) {
//			Reservation reservation = mapRowToReservation(results);
//			reservations.add(reservation);
//		}
//		
//		return reservations;
//	}
	
	@Override
	public long createReservation(Site site, String reservationName, LocalDate arrive, 
			LocalDate depart) {
		long nextId = getNextReservationId();
		String sqlInsertNewReservation = "INSERT INTO reservation(reservation_id, site_id, name, from_date, to_date, create_date) VALUES(?, ?, ?, ?, ?, ?)";

		template.update(sqlInsertNewReservation, nextId, site.getSite_id(), reservationName, arrive,
				depart, LocalDate.now());
	
		return nextId;
	}
	
//	private Reservation mapRowToReservation(SqlRowSet results) {
//		Reservation reservation = new Reservation();
//		reservation.setReservation_id(results.getLong("reservation_id"));
//		reservation.setSite_id(results.getLong("site_id"));
//		reservation.setName(results.getString("name"));
//		reservation.setFrom_date(results.getDate("from_date").toLocalDate());
//		reservation.setTo_date(results.getDate("to_date").toLocalDate());
//		reservation.setCreate_date(results.getDate("create_date").toLocalDate());
//		
//		return reservation;
//	}
//	
	private long getNextReservationId() {
		SqlRowSet nextIdResult = template.queryForRowSet("SELECT nextval('reservation_reservation_id_seq')");
		if(nextIdResult.next()) {
			return nextIdResult.getLong(1);
		} else {
			throw new RuntimeException("Something went wrong while getting an id for the new department");
		}
	}
}
