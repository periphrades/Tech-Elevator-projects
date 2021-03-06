package com.techelevator.model;

import java.time.LocalDate;
import java.util.List;

public interface ReservationDAO {
	
	
	public long createReservation(Site site, String reservationName, LocalDate arrive, 
			LocalDate depart);

}
