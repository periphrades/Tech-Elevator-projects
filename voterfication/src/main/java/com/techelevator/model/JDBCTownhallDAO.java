package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCTownhallDAO implements TownhallDAO {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCTownhallDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Townhall> getAllTownhallsByState(String state) {
		List<Townhall> allTownhalls = new ArrayList<Townhall>();
		String sqlSelectAllTownhalls = "SELECT * FROM townhall WHERE state_id = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllTownhalls, state);
		while (results.next()) {
			allTownhalls.add(mapRowToTownhall(results));
		}
		return allTownhalls;
	}

	@Override
	public Townhall getTownhallById(int id) {
		Townhall townhall = null;
		String sqlGetTownhallById = "SELECT * " + "FROM townhall " + "WHERE townhall_id = ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetTownhallById, id);
		if (results.next()) {
			townhall = mapRowToTownhall(results);
		}
		return townhall;
	}

	@Override
	public void populateTownhallTable() {
		String sql = "INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('B001306', 'Central Ohio Townhall For Change', '145 5th Avenue', 'Columbus', 'OH', '43019', '2018-12-1'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('F000455', 'Greater Cleveland Area Townhall 2019 New Start', '378 Euclid Blvd.', 'Cleveland', 'OH', '44106', '2019-01-05'); " +

			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('M001153', 'December Townhall 2018', '4584 Bearclaw Pass', 'Nome', 'AK', '99762', '2018-12-05'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('S001198', 'Annual Wildlife Fish and Game Townhall', '4493 Evergreen Terrace', 'Achorage', 'AK', '99501', '2019-01-13'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('R000575', 'Tax Reform Town Hall', '27 Bear Bryant Ave.', 'Tuscaloosa', 'AL', '35401', '2018-12-11'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('S001185', 'You Speak Town Hall', '3232 Center St.', 'Mobile', 'AL', '36602', '2019-01-25'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('C001095', 'Arkansas United', '4929 12th Avenue', 'Little Rock', 'AR', '72022', '2018-12-13'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('B001236', 'We The People Townhall', '5393 Jefferson Ave.', 'Jonesboro', 'AR', '72401', '2019-01-25'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('M001197', 'Arizona Republicans Town Hall', '99 Cactus Ave.', 'Phoenix', 'AZ', '85016', '2018-12-13'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('S001191', 'Arizona Democrats Town Hall', '3434 Crystal Lane', 'Tuscon', 'AZ', '85713', '2019-01-25'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('F000062', 'SoCal Townhall', '333 Sunset Blvd.', 'Beverly Hills', 'CA', '90210', '2018-12-12'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('N000181', 'Californians for Change Townhall', '3939 East Hunter Ave.', 'Thousand Oaks', 'CA', '91362', '2019-01-17'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('L000564', 'Mile High Townhall', '93922 Elk Trail', 'Aspen', 'CO', '81611', '2018-12-14'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('B001267', 'Denver Speaks', '3492 Main St.', 'Denver', 'CO', '80206', '2019-01-15'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('M001169', 'Connecticut Connects', '135 5th Avenue', 'Bridgeport', 'CT', '06610', '2018-12-12'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('C001069', 'State of Our State', '378 Autumn Blvd.', 'New Haven', 'CT', '06510', '2019-01-22'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('C001088', 'Your Voice', '4932 Center St.', 'Wilmington', 'DE', '19883', '2018-12-12'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('B001303', 'Tax Reform Townhall', '11 13th Ave.', 'Wilmington', 'DE', '19886', '2019-01-05'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('C001111', 'Townhall by the Beach', '12 Turtle Drive', 'Naples', 'FL', '34102', '2018-12-14'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('R000595', 'Florida Health Matters Townhall', '123 Disney Drive', 'Orlando', 'FL', '32805', '2019-01-14'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('S001189', 'Your Voice Matters Townhall', '122 Main St', 'Macon', 'GA', '31209', '2018-12-15'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('B000490', 'You Talk and We Listen', '599 Riverside Dr.', 'Savannah', 'GA', '31406', '2019-01-05'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('H001042', 'Aloha Townhall', '133 Volcano Ave', 'Honolulu', 'HI', '96806', '2018-12-14'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('G000571', 'Veterans for Gabbard Townhall', '9944 Sunshine St.', 'Honolulu', 'HI', '96808', '2019-01-25'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('Y000066', 'Heartland Townhall', '293 Easton Way', 'Des Moines', 'IA', '50303', '2018-12-15'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('E000295', 'Farming Townhall',  '1111 Flatland St.', 'Ames', 'IA', '50011', '2019-01-19'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('R000584', 'Idaho Cares', '14333 Rolling Meadows Lane', 'Boise', 'ID', '83702', '2018-12-13'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('C000880', 'Tax Reform Townhall', '58 3rd Ave.', 'Boise', 'ID', '83709', '2019-01-12'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('D000563', 'Illinois For Change', '33 Fifth St.', 'Rockford', 'IL', '61106', '2018-12-09'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('D000622', 'Safety First', '22 Lakeshore Dr.', 'Chicago', 'IL', '60176', '2019-01-20'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('Y000064', 'Indiana Townhall For Change', '1433 9th Avenue', 'Indianapolis', 'IN', '46209', '2018-12-12'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('V000108', 'Healthcare Townhall', '378 Speedway Lane.', 'Gary', 'IN', '46406', '2019-01-15'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('R000307', 'Kansas Cares', '63 Lincoln Ave.', 'Topeka', 'KS', '66617', '2018-12-13'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('M000934', 'Jobs for Kansas', '8382 Central Blvd', 'Lawrence', 'KS', '66045', '2019-01-22'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('P000603', 'Kentucky Townhall For Change', '5543 12th Avenue', 'Lexington', 'KY', '40542', '2018-12-12'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('Y000062', 'Your Voice Matters Kentucky', '494 Slugger Way.', 'Louisville', 'KY', '44106', '2019-01-05'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('G000577', 'French Quarter Townhall', '1293 Livingston Dr.', 'New Orleans', 'LA', '70124', '2018-12-13'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('H001077', 'Clay Cares Townhall', '378 Oak St.', 'Baton Rouge', 'LA', '70812', '2019-01-05'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('W000817', 'Massachusetts Matters', '7392 Harbortown Ave.', 'Boston', 'MA', '02118', '2018-12-16'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('K000379', 'An Evening with a Kennedy', '4232 JFK Blvd.', 'Boston', 'MA', '02114', '2019-01-23'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('C000984', 'Maryland Citizens Townhall', '1432 Hilltop Rd.', 'Columbia', 'MD', '21045', '2018-12-01'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('V000128', 'Van Hollen Connects', '378 Roberts Rd.', 'Baltimore', 'MD', '21202', '2019-02-05'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('C001035', 'Susan Speaks', '2343 Washington Ave.', 'Portland', 'ME', '04107', '2018-12-11'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('P000611', 'Maine Townhall', '432 Maple Rd.', 'Portland', 'ME', '04105', '2019-01-15'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('D000624', 'Speak Your Mind, Detroit', '492 Gratiot Ave', 'Detroit', 'MI', '48213', '2018-12-16'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('L000263', 'Auto Industry Townhall', '4200 Main St.', 'Dearborn', 'MI', '48121', '2019-01-05'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " + 
			"VALUES('K000367', 'Minnesota Winter Townhall', '2221 Twin City Dr.', 'Minneapolis', 'MN', '55414', '2018-12-16'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('E000288', 'Minnesota Jobs Townhall', '854 West Ave.', 'Duluth', 'MN', '55806', '2019-01-09'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('S001195', 'The Future of Missouri', '8924 34th St.', 'Springfield', 'MO', '65809', '2018-12-14'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('C001061', 'Missouri Cleaner Water Townhall', '742 17th Ave.', 'Kansas City', 'MO', '64116', '2019-01-25'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('H001079', 'Mississippi Education Townhall', '690 Center St.', 'Jackson', 'MS', '39208', '2018-11-11'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('H001045', 'Healthcare Concerns Addressed', '378 Fisher Blvd.', 'Biloxi', 'MS', '39531', '2019-01-12'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('D000618', 'Big Sky Townhall', '144 Buffalo Lane', 'Billings', 'MT', '59105', '2018-12-08'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('T000464', 'The Future of Montana', '378 Prarie View', 'Bozeman', 'MT', '59717', '2019-01-18'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('M001187', 'North Carolina Townhall For Change', '1888 Rolling Hills Blvd.', 'Chapel Hill', 'NC', '27517', '2018-12-14'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('P000523', 'Healthcare North Carolina Townhall', '17 Main St.', 'Raleigh', 'NC', '27602', '2019-01-19'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('H001061', 'Fossil Fuels and North Dakota', '26 Jefferson Way', 'Fargo', 'ND', '58105', '2018-12-12'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('C001096', 'Crime Prevention Town Hall', '1233 Badlands Blvd.', 'Bismarck', 'ND', '58504', '2019-01-05'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('S001197', 'Nebraska Farmers Townhall', '145 Old Towne Dr.', 'Lincoln', 'NE', '68520', '2018-12-10'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('S001172', 'Jobs for Nebraskans', '33 Main St.', 'Lincoln', 'NE', '68516', '2019-01-23'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('S001170', 'Townhall for Liberty', '132 Revere Ln.', 'Concord', 'NH', '03302', '2018-12-13'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('K000382', 'New Hampshire Speaks', '55 Liberty Rd.', 'Nashua', 'NH', '03061', '2019-01-22'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('B001288', 'Jersey Shore Townhall', '422 Boardwalk', 'Atlantic City', 'NJ', '08232', '2018-12-10'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('G000583', 'Seaside Townhall', '378 Euclid Blvd.', 'Atlantic City', 'NJ', '08203', '2019-02-05'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('H001046', 'New Mexico Economic Townhall', '142 8th St.', 'Santa Fe', 'NM', '87501', '2018-12-07'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('P000588', 'Gun Safety Townhall', '192 Cactus Way', 'Santa Fe', 'NM', '87505', '2019-01-16'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('C001113', 'Townhall for Seniors', '1343 Las Vegas Blvd.', 'Las Vegas', 'NV', '89126', '2018-12-01'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('K000390', 'Water Crisis Townhall', '423 Desert Blvd.', 'Reno', 'NV', '89515', '2019-01-11'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('G000555', 'Big Apple Townhall', '321 Fifth Avenue', 'New York', 'NY', '10016', '2018-12-10'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('S000148', 'Economic Development Townhall', '378 State St.', 'New York', 'NY', '10012', '2019-01-19'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('L000575', 'Oklahoma Economic Townhall', '145 Booker St.', 'Oklahoma City', 'OK', '73026', '2018-12-11'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('R000604', 'Sooner than Later Job Growth Townhall', '333 Smith Lane', 'Norman', 'OK', '73068', '2019-01-05'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('S001180', 'Portlandia Townhall', '199 MLK Dr.', 'Portland', 'OR', '97204', '2018-12-07'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('W000779', 'University of Oregon Townhall', '402 Campus Parkway', 'Eugene', 'OR', '97402', '2019-01-31'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('S001205', 'Three Rivers Townhall', '143 19th St.', 'Pittsburgh', 'PA', '15208', '2018-12-10'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('C001070', 'Liberty Bell Townhall', '132 1st St.', 'Philadelphia', 'PA', '19106', '2019-01-29'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('W000802', 'Rhode Island Healthcare Forum', '145 3th Avenue', 'Providence', 'RI', '02907', '2018-12-10'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('R000122', 'RI Economic Prosperity Townhall', '378 Ocean Ave.', 'Providence', 'RI', '02910', '2019-01-16'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('G000359', 'South Carolina Jobs Townhall', '143 Peach Rd.', 'Charleston', 'SC', '29403', '2018-12-11'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('S001184', 'Healthcare in South Carolina', '3733 Main St.', 'Greenville', 'SC', '29615', '2019-01-15'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('R000605', 'Your Safety Matters South Dakota', '1333 Clifton Way', 'Sioux Falls', 'SD', '57109', '2018-12-08'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('T000250', 'Economic Prosperity Forum', '2332 Rounded Rock Dr.', 'Rapid City', 'SD', '57709', '2019-01-15'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('C001071', 'Tennessee Citizens Townhall', '1433 Golden Lane', 'Nashville', 'TN', '37116', '2018-12-12'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('R000582', 'We the People Townhall', '373 Rocky Top Ave.', 'Knoxville', 'TN', '37924', '2019-01-18'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('C001051', '2nd Amendment Townhall', '14333 32nd St.', 'Dallas', 'TX', '75104', '2018-12-09'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('B000755', 'Oil and Gas Townhall', '378 Black St.', 'Houston', 'TX', '77008', '2019-01-17'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('L000577', 'Utah Environmental Forum', '122 Rocky Mountain Dr.', 'Salt Lake City', 'UT', '84114', '2018-12-04'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('H000338', 'Economic Growth for Utah', '3799 Snowfall Pass', 'Salt Lake City', 'UT', '84116', '2019-01-31'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('C001078', 'Virginia and the Future Townhall', '1432 Rolling Woods Lane', 'Charlottesville ', 'VA', '22906', '2018-11-29'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('B001292', 'Job Growth Townhall', '2422 Center St.', 'Richmond', 'VA', '23232', '2019-01-16'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('L000174', 'Vermont First', '5543 Maple St.', 'Burlington', 'VT', '05406', '2018-12-06'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('S000033', 'The New Vermont Economy', '1022 Meadows Lane', 'Montpelier', 'VT', '05609', '2019-01-22'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('C000127', 'Fish and Game Townhall', '1422 Ocean Dr.', 'Seattle', 'WA', '98111', '2018-12-09'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('S000510', 'Economic Development Townhall', '2932 High St.', 'Seattle', 'WA', '98127', '2019-01-24'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('R000570', 'Economic Growth in Wisconsin', '343 Lombardi Way', 'Green Bay', 'WI', '54308', '2018-12-05'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('B001230', 'Jobs for Wisconsin', '3733 Brewer St.', 'Milwaukee', 'WI', '53220', '2019-01-19'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('M001180', 'Coal Miners Townhall', '1922 Mountain Pass', 'Morgantown', 'WV', '26505', '2018-12-08'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('M001195', 'West Virginia in the 21st Century Townhall', '6322 Washington Ave.', 'Huntington', 'WV', '25713', '2019-01-22'); " +
	
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('E000285', 'Ranching Sustainability in Wyoming', '1433 Center St.', 'Cheyenne', 'WY', '82007', '2018-12-08'); " +
			"INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, state_id, townhall_zip, townhall_date) " +
			"VALUES('B001261', 'Technology and the Wyoming Economy', '7388 Rachero Rd.', 'Casper', 'WY', '82636', '2019-01-15'); " ;

		jdbcTemplate.update(sql);
	
	}

	private Townhall mapRowToTownhall(SqlRowSet results) {
		Townhall townhall = new Townhall();

		townhall.setId(results.getInt("townhall_id"));
		townhall.setTownhallName(results.getString("townhall_name"));
		townhall.setTownhallAddress(results.getString("townhall_address"));
		townhall.setTownhallCity(results.getString("townhall_city"));
		townhall.setState(results.getString("state_id"));
		townhall.setTownhallZip(results.getString("townhall_zip"));
		townhall.setDate(results.getDate("townhall_date").toLocalDate());

		return townhall;
	}
}