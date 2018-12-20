package com.techelevator;

import java.time.LocalDate;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import com.techelevator.model.APICaller;


public class APICallerTest {

	private APICaller caller;
	
	@Before
	public void setup() {
		caller = new APICaller();
	}
	
	@Test
	public void verifyEvenYear() {
		
		LocalDate even1 = LocalDate.parse("2018-01-03");
		LocalDate even2 = LocalDate.parse("2018-01-04");
		LocalDate even3 = LocalDate.parse("2022-01-03");
		LocalDate even4 = LocalDate.parse("2024-01-04");
		
		Assert.assertEquals(115, caller.getCurrentCongress(even1));
		Assert.assertEquals(115, caller.getCurrentCongress(even2));
		Assert.assertEquals(117, caller.getCurrentCongress(even3));
		Assert.assertEquals(118, caller.getCurrentCongress(even4));
		
	}
	
	@Test
	public void verifyOddYearAfterNewCongress() {
		LocalDate odd1 = LocalDate.parse("2019-01-04");
		LocalDate odd2 = LocalDate.parse("2023-01-04");
		
		Assert.assertEquals(116, caller.getCurrentCongress(odd1));
		Assert.assertEquals(118, caller.getCurrentCongress(odd2));
	}
	
	@Test
	public void verifyOddYearBeforeNewCongress() {
		LocalDate odd1 = LocalDate.parse("2019-01-03");
		LocalDate odd2 = LocalDate.parse("2023-01-03");
		
		Assert.assertEquals(115, caller.getCurrentCongress(odd1));
		Assert.assertEquals(117, caller.getCurrentCongress(odd2));
	}
	
	
}
