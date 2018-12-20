-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

-- source for house of reps info: http://clerk.house.gov/member_info/olmbr.aspx
-- House of Reps, non-voters:
-- Bordallo, Madeleine Z.	GU	Delegate
-- González-Colón, Jenniffer	PR	Resident Commissioner
-- Norton, Eleanor Holmes	DC	Delegate
-- Plaskett, Stacey E.	VI	Delegate
-- Radewagen, Aumua Amata Coleman	AS	Delegate
-- Sablan, Gregorio Kilili Camacho	MP	Delegate


-- House of Representatives

BEGIN;


INSERT INTO states (state_id, state_name) VALUES ('AL', 'Alabama');
INSERT INTO states (state_id, state_name) VALUES ('AK', 'Alaska');
INSERT INTO states (state_id, state_name) VALUES ('AZ', 'Arizona');
INSERT INTO states (state_id, state_name) VALUES ('AR', 'Arkansas');
INSERT INTO states (state_id, state_name) VALUES ('CA', 'California');
INSERT INTO states (state_id, state_name) VALUES ('CO', 'Colorado');
INSERT INTO states (state_id, state_name) VALUES ('CT', 'Connecticut');
INSERT INTO states (state_id, state_name) VALUES ('DE', 'Delaware');
INSERT INTO states (state_id, state_name) VALUES ('DC', 'District Of Columbia');
INSERT INTO states (state_id, state_name) VALUES ('FL', 'Florida');
INSERT INTO states (state_id, state_name) VALUES ('GA', 'Georgia');
INSERT INTO states (state_id, state_name) VALUES ('HI', 'Hawaii');
INSERT INTO states (state_id, state_name) VALUES ('ID', 'Idaho');
INSERT INTO states (state_id, state_name) VALUES ('IL', 'Illinois');
INSERT INTO states (state_id, state_name) VALUES ('IN', 'Indiana');
INSERT INTO states (state_id, state_name) VALUES ('IA', 'Iowa');
INSERT INTO states (state_id, state_name) VALUES ('KS', 'Kansas');
INSERT INTO states (state_id, state_name) VALUES ('KY', 'Kentucky');
INSERT INTO states (state_id, state_name) VALUES ('LA', 'Louisiana');
INSERT INTO states (state_id, state_name) VALUES ('ME', 'Maine');
INSERT INTO states (state_id, state_name) VALUES ('MD', 'Maryland');
INSERT INTO states (state_id, state_name) VALUES ('MA', 'Massachusetts');
INSERT INTO states (state_id, state_name) VALUES ('MI', 'Michigan');
INSERT INTO states (state_id, state_name) VALUES ('MN', 'Minnesota');
INSERT INTO states (state_id, state_name) VALUES ('MS', 'Mississippi');
INSERT INTO states (state_id, state_name) VALUES ('MO', 'Missouri');
INSERT INTO states (state_id, state_name) VALUES ('MT', 'Montana');
INSERT INTO states (state_id, state_name) VALUES ('NE', 'Nebraska');
INSERT INTO states (state_id, state_name) VALUES ('NV', 'Nevada');
INSERT INTO states (state_id, state_name) VALUES ('NH', 'New Hampshire');
INSERT INTO states (state_id, state_name) VALUES ('NJ', 'New Jersey');
INSERT INTO states (state_id, state_name) VALUES ('NM', 'New Mexico');
INSERT INTO states (state_id, state_name) VALUES ('NY', 'New York');
INSERT INTO states (state_id, state_name) VALUES ('NC', 'North Carolina');
INSERT INTO states (state_id, state_name) VALUES ('ND', 'North Dakota');
INSERT INTO states (state_id, state_name) VALUES ('OH', 'Ohio');
INSERT INTO states (state_id, state_name) VALUES ('OK', 'Oklahoma');
INSERT INTO states (state_id, state_name) VALUES ('OR', 'Oregon');
INSERT INTO states (state_id, state_name) VALUES ('PA', 'Pennsylvania');
INSERT INTO states (state_id, state_name) VALUES ('RI', 'Rhode Island');
INSERT INTO states (state_id, state_name) VALUES ('SC', 'South Carolina');
INSERT INTO states (state_id, state_name) VALUES ('SD', 'South Dakota');
INSERT INTO states (state_id, state_name) VALUES ('TN', 'Tennessee');
INSERT INTO states (state_id, state_name) VALUES ('TX', 'Texas');
INSERT INTO states (state_id, state_name) VALUES ('UT', 'Utah');
INSERT INTO states (state_id, state_name) VALUES ('VT', 'Vermont');
INSERT INTO states (state_id, state_name) VALUES ('VA', 'Virginia');
INSERT INTO states (state_id, state_name) VALUES ('WA', 'Washington');
INSERT INTO states (state_id, state_name) VALUES ('WV', 'West Virginia');
INSERT INTO states (state_id, state_name) VALUES ('WI', 'Wisconsin');
INSERT INTO states (state_id, state_name) VALUES ('WY', 'Wyoming');

INSERT INTO app_user (user_name, password, role, salt) VALUES('Administrator','lS8iGSdlPe1goVItNWTbxA==','admin','/nUqWXscntKI/R003FarZ1/yCak41D0JiZ4oVYmYpiggTvJT6f+ajTt4NyIubbWYtndI70c9RKPF4JS3QnBDblzOAOomkIT6hN1U6ekxFAIOZ1vSzC8vClhOHnaHkS1GMGEW1gc1imneFHGI6ZK66laogHkGzJ3Rm3cGm/FOSPo=');

-- INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, townhall_zip, townhall_date)
-- VALUES('B001306', 'Central Ohio Townhall For Change', '145 5th Avenue', 'Columbus', '43019', '2018-12-01');
-- INSERT INTO townhall(representative_id, townhall_name, townhall_address, townhall_city, townhall_zip, townhall_date)
-- VALUES('F000455', 'Greater Cleveland Area Townhall 2019 New Start', '378 Euclid Blvd.', 'Cleveland', '44106', '2019-01-05');


-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('LA', 'Ralph', 'Abraham', 'House', 5);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NC', 'Alma', 'Adams', 'House', 12);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AL', 'Robert', 'Aderholt', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Pete', 'Aguilar', 'House', 31);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('GA', 'Rick', 'Allen', 'House', 12);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'Justin', 'Amash', 'House', 3, 'R', 'https://amash.house.gov/contact/email', '70 W Michigan Ave', 'Ste 212', 'Battle Creek', '49017', '269-205-3823', '114 Cannon HOB', '', '20515', '202-225-3831');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NV', 'Mark', 'Amodei', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Jodey', 'Arrington', 'House', 19);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Brian', 'Babin', 'House', 36);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NE', 'Don', 'Bacon', 'House', 2);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('OH', 'Troy', 'Balderson', 'House', 12, 'R', 'https://balderson.house.gov/contact/email', '250 East Wilson Bridge Rd', 'Suite 100', 'Worthington', '43085', '614-523-2555', '1203 Longworth House Office Building', '', '20515', '202-225-5355');
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('IN', 'Jim', 'Banks', 'House', 3, 'R', 'https://banks.house.gov/contact/', '1300 S Harrison St.', '', 'Fort Wayne', '46802', '260-702-4750', '1713 Longworth HOB', '', '20515', '202-225-4436');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Lou', 'Barletta', 'House', 11, 'R', 'https://barletta.house.gov/contact/email-me', '126 N. Hanover St.', '', 'Carlisle', '17013', '717-249-0190', '2049 Rayburn House Office Building', '', '20515', '202-225-6511');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('KY', 'Andy', 'Barr', 'House', 6, 'R', 'https://barr.house.gov/contact/email-me', '2709 Old RoseBud Road', '', 'Lexington', '40509', '859-219-1366', '1427 Longworth House Office Building', '', '20515', '202-225-4706');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Nanette', 'Barragan', 'House', 44);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Joe', 'Barton', 'House', 6);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Karen', 'Bass', 'House', 37);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('OH', 'Joyce', 'Beatty', 'House', 3, 'D', 'https://beatty.house.gov/contact/email-me', '471 East Broad Street', 'Suite 1100', 'Columbus', '43215', '614-220-0003', '133 Cannon House Office Building', '', '20515', '202-225-4324');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Ami', 'Bera', 'House', 7);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'Jack', 'Bergman', 'House', 1, 'R', 'https://bergman.house.gov/contact/', '1396 Douglas Drive', 'Suite 22B', 'Traverse City', '49696', '231-944-7633', '414 Cannon HOB', '', '20515', '202-225-4735');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('VA', 'Donald', 'Beyer Jr.', 'House', 8);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AZ', 'Andy', 'Biggs', 'House', 5);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Gus', 'Bilirakis', 'House', 12);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'Mike', 'Bishop', 'House', 8, 'R' 'https://mikebishop.house.gov/contact/', '711 E. Grand River Ave.', 'Suite A', 'Brighton', '48116', '810-227-8600', '428 Cannon HOB', '', '20515', '202-225-4872');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('UT', 'Rob', 'Bishop', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('GA', 'Sanford', 'Bishop Jr.', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TN', 'Diane', 'Black', 'House', 6);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TN', 'Marsha', 'Blackburn', 'House', 7);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IA', 'Rod', 'Blum', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('OR', 'Earl', 'Blumenauer', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('DE', 'Lisa', 'Blunt Rochester', 'House', 'D', 'https://bluntrochester.house.gov/contact/', '1105 N Market St.', 'Suite 400', 'Wilmington', '19801', '302-830-2330', '1519 Longworth House Office Building', '', '20515', '202-225-4165');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('OR', 'Suzanne', 'Bonamici', 'House', 1);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Mike', 'Bost', 'House', 12);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Brendan', 'Boyle', 'House', 13, 'D', 'https://boyle.house.gov/contact/email', '101 E. Main St', 'Ste A', 'Norristown', '19401', '610-270-8081', '1133 Longworth House Office Building', '', '20515', '202-225-6111');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Kevin', 'Brady', 'House', 8);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Robert', 'Brady', 'House', 1, 'D', 'https://brady.house.gov/contact-me/email-me', '1350 Edgmont Avenue', 'Suite 2575', 'Chester', '19013', '610-874-7094', '2004 Rayburn HOB', '', '20515', '202-225-4731');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('VA', 'Dave', 'Brat', 'House', 7);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AL', 'Mo', 'Brooks', 'House', 5);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('IN', 'Susan', 'Brooks', 'House', 5, 'R', 'https://susanwbrooks.house.gov/contact/email-me', '11611 N. Meridian Street', 'Suite 415', 'Carmel', '46032', '317-848-0201', '2211 Rayburn House Office Building', '', '20515', '202-225-2276');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MD', 'Anthony', 'Brown', 'House', 4);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Julia', 'Brownley', 'House', 26);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Vern', 'Buchanan', 'House', 16);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CO', 'Ken', 'Buck', 'House', 4);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('IN', 'Larry', 'Bucshon', 'House', 8, 'R', 'https://bucshon.house.gov/contact/contact-larry.htm', '420 Main Street', 'Suite 1402', 'Evansville', '47708', '812-465-6484', '2313 Rayburn HOB', '', '20515', '202-225-4636');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NC', 'Ted', 'Budd', 'House', 13);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Michael', 'Burgess', 'House', 26);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Cheri', 'Bustos', 'House', 17);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NC', 'George', 'Butterfield', 'House', 1);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AL', 'Bradley', 'Byrne', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Ken', 'Calvert', 'House', 42);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MA', 'Michael', 'Capuano', 'House', 7);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Salud', 'Carbajal', 'House', 24);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Tony', 'Cardenas', 'House', 29);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('IN', 'Andre', 'Carson', 'House', 7, 'D', 'https://carson.house.gov/contact/email-me', '300 E Fall Creek Pkwy. N. Dr.', 'Suite 300', 'Indianapolis', '46205', '317-283-6516', '2135 Rayburn House Office Building', '', '20515', '202-225-4011');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('GA', 'Earl', 'Carter', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'John', 'Carter', 'House', 31);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Matt', 'Cartwright', 'House', 17);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Kathy', 'Castor', 'House', 14);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Joaquin', 'Castro', 'House', 20);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('OH', 'Steve', 'Chabot', 'House', 1, 'R', 'https://chabot.house.gov/contact/', '11 South Broadway', '', 'Lebanon', '45036', '513-421-8704', '2408 Rayburn House Office Building', '', '20515', '202-225-2216');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WY', 'Liz', 'Cheney', 'House', 'R', 'https://cheneyforms.house.gov/contact/', '2120 Capitol Avenue', 'Suite 8005', 'Cheyenne', '82001', '307-772-2595', '416 Cannon House Office Building', '', '20515', '202-225-2311');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Judy', 'Chu', 'House', 27);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('RI', 'David', 'Cicilline', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MA', 'Katherine', 'Clark', 'House', 5);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Yvette', 'Clarke', 'House', 9);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MO', 'Lacy', 'Clay', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MO', 'Emanuel', 'Cleaver', 'House', 5);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Michael', 'Cloud', 'House', 27);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('SC', 'James', 'Clyburn', 'House', 6);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CO', 'Mike', 'Coffman', 'House', 6);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TN', 'Steve', 'Cohen', 'House', 9);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('OK', 'Tom', 'Cole', 'House', 4);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Chris', 'Collins', 'House', 27);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('GA', 'Doug', 'Collins', 'House', 9);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('KY', 'James', 'Comer', 'House', 1, 'R', 'https://comer.house.gov/contact/email', '67 North Main Street', '', 'Madisonville', '42431', '270-487-9509', '1513 Longworth HOB', '', '20515', '202-225-3115');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('VA', 'Barbara', 'Comstock', 'House', 10);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Mike', 'Conaway', 'House', 11);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('VA', 'Gerald', 'Connolly', 'House', 11);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Paul', 'Cook', 'House', 8);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TN', 'Jim', 'Cooper', 'House', 5);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Lou', 'Correa', 'House', 46);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Jim', 'Costa', 'House', 16);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Ryan', 'Costello', 'House', 6);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CT', 'Joe', 'Courtney', 'House', 2);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('ND', 'Kevin', 'Cramer', 'House', 'R', 'https://cramer.house.gov/contact', '220 East Rosser Avenue', '328 Federal Building', 'Bismarck', '58501', '701-224-0355', '1717 Longworth House Office Building', '', '20515', '202-225-2611');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AR', 'Rick', 'Crawford', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Charlie', 'Crist', 'House', 13);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Joe', 'Crowley', 'House', 14);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Henry', 'Cuellar', 'House', 28);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'John', 'Culberson', 'House', 7);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MD', 'Elijah', 'Cummings', 'House', 7);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Carlos', 'Curbelo', 'House', 26);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('UT', 'John', 'Curtis', 'House', 3);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('OH', 'Warren', 'Davidson', 'House', 8, 'R', 'https://davidson.house.gov/contact/email', '20 Dotcom Drive', '', 'Troy', '45373', '937-339-1524', '1107 Longworth HOB', '', '20515', '202-225-6205');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Danny', 'Davis', 'House', 7);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Rodney', 'Davis', 'House', 13);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Susan', 'Davis', 'House', 53);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('OR', 'Peter', 'DeFazio', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CO', 'Diana', 'DeGette', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MD', 'John', 'Delaney', 'House', 6);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CT', 'Rosa', 'DeLauro', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WA', 'Suzan', 'DelBene', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Val', 'Demings', 'House', 10);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Jeff', 'Denham', 'House', 10);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Ron', 'DeSantis', 'House', 6);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Mark', 'DeSaulnier', 'House', 11);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TN', 'Scott', 'DesJarlais', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Theodore', 'Deutch', 'House', 22);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Mario', 'Diaz-Balart', 'House', 25);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'Debbie', 'Dingell', 'House', 12, 'D', 'https://debbiedingellforms.house.gov/contact/', '19855 West Outer Drive', 'Suite 103-E', 'Dearborn', '48124', '313-278-2936', '116 Cannon House Office Building', '', '20515', '202-225-4071');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Lloyd', 'Doggett', 'House', 35);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Daniel', 'Donovan', 'House', 11);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Michael', 'Doyle', 'House', 14);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('WI', 'Sean', 'Duffy', 'House', 7, 'R', 'https://duffy.house.gov/contact/email-me', '15569 Railroad St.', 'Suite 302', 'Hayward', '54843', '715-392-3984', '1714 Longworth HOB', '', '20515', '202-225-3365');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('SC', 'Jeff', 'Duncan', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TN', 'John', 'Duncan Jr.', 'House', 2);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Neal', 'Dunn', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MN', 'Keith', 'Ellison', 'House', 5);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MN', 'Tom', 'Emmer', 'House', 6);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Eliot', 'Engel', 'House', 16);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Anna', 'Eshoo', 'House', 18);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Adriano', 'Espaillat', 'House', 13);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('KS', 'Ron', 'Estes', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CT', 'Elizabeth', 'Esty', 'House', 5);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Dwight', 'Evans', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'John', 'Faso', 'House', 19);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('GA', 'Drew', 'Ferguson IV', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Brian', 'Fitzpatrick', 'House', 8);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TN', 'Chuck', 'Fleischmann', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Bill', 'Flores', 'House', 17);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NE', 'Jeff', 'Fortenberry', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Bill', 'Foster', 'House', 11);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NC', 'VA', 'Foxx', 'House', 5);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Lois', 'Frankel', 'House', 21);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NJ', 'Rodney', 'Frelinghuysen', 'House', 11);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('OH', 'Marcia', 'Fudge', 'House', 11, 'D', 'https://fudge.house.gov/email-me/', '4834 Richmond Road', 'Suite 150', 'Warrensville Heights', '44128', '216-522-4900', '2344 Rayburn House Building', '', '20515', '202-225-7032');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('HI', 'Tulsi', 'Gabbard', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Matt', 'Gaetz', 'House', 1);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('WI', 'Mike', 'Gallagher', 'House', 8, 'R', 'https://gallagher.house.gov/contact/email', '1702 Scheuring Road', '', 'De Pere', '54115', '920-301-4500', '1230 Longworth', 'House Office Building', '20515', '202-225-5665');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AZ', 'Ruben', 'Gallego', 'House', 7);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'John', 'Garamendi', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('VA', 'Thomas', 'Garrett', 'House', 5);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MT', 'Greg', 'Gianforte', 'House', 'R', 'https://gianforte.house.gov/contact', '222 North 32nd Street', 'Suite 900', 'Billings', '59101', '406-969-1736', '1419 Longworth HOB', '', '20515', '202-225-3211');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('OH', 'Bob', 'Gibbs', 'House', 7, 'R', 'https://gibbs.house.gov/contact/email', '110 Cottage St.', '', 'Ashland', '44805', '419-207-0650', '2446 Rayburn HOB', '', '20515', '202-225-6265');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MT', 'Greg', 'Gianforte', 'House');
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('OH', 'Bob', 'Gibbs', 'House', 7, 'R', 'https://gibbs.house.gov/contact/email', '110 Cottage St.', '', 'Ashland', '44805', '419-207-0650', '2446 Rayburn HOB', '', '20515', '202-225-6265');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Louie', 'Gohmert', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Jimmy', 'Gomez', 'House', 34);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Vicente', 'Gonzalez', 'House', 15);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('VA', 'Bob', 'Goodlatte', 'House', 6);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AZ', 'Paul', 'Gosar', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NJ', 'Josh', 'Gottheimer', 'House', 5);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('SC', 'Trey', 'Gowdy', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Kay', 'Granger', 'House', 12);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('LA', 'Garret', 'Graves', 'House', 6);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MO', 'Sam', 'Graves', 'House', 6);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('GA', 'Tom', 'Graves', 'House', 14);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Al', 'Green', 'House', 9);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Gene', 'Green', 'House', 29);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('VA', 'Morgan', 'Griffith', 'House', 9);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AZ', 'Raul', 'Grijalva', 'House', 3);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('WI', 'Glenn', 'Grothman', 'House', 6, 'R', 'https://grothman.house.gov/contact/', '24 West Pioneer Rd.', '', 'Fond du Lac', '54935', '920-907-0624', '1217 Longworth HOB', '', '20515', '202-225-2476');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('KY', 'Brett', 'Guthrie', 'House', 2, 'R', 'https://brettguthrieforms.house.gov/contact/', '996 Wilkingson Trace', 'Suite B2', 'Bowling Green', '42103', '2434 Rayburn HOB', '', '20515', '202-225-3501');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Luis', 'Gutierrez', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('HI', 'Colleen', 'Hanabusa', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('GA', 'Karen', 'Handel', 'House', 6);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MS', 'Gregg', 'Harper', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MD', 'Andy', 'Harris', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MO', 'Vicky', 'Hartzler', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Alcee', 'Hastings', 'House', 20);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WA', 'Denny', 'Heck', 'House', 10);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Jeb', 'Hensarling', 'House', 5);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('OK', 'Kevin', 'Hern', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WA', 'Jaime', 'Herera Beutler', 'House', 3);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('GA', 'Jody', 'Hice', 'House', 10);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Brian', 'Higgins', 'House', 26);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('LA', 'Clay', 'Higgins', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AR', 'French', 'Hill', 'House', 2);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CT', 'James', 'Himes', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NC', 'George', 'Holding', 'House', 2);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('IN', 'Trey', 'Hollingsworth', 'House', 9, 'R', 'https://hollingsworth.house.gov/contact/', '321 Quartermaster Court', '', 'Jeffersonville', '47130', '812-288-3999', '1641 Longworth House Office Building', '', '20515', '202-225-5315');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MD', 'Steny', 'Hoyer', 'House', 5);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NC', 'Richard', 'Hudson', 'House', 8);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Jared', 'Huffman', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'Bill', 'Huizenga', 'House', 2, 'R', 'https://huizenga.house.gov/contact/', '1 South Harbor Ave.', 'Suite 6B', 'Grand Haven', '49417', '616-414-5516', '2232 Rayburn HOB', '', '20515', '202-225-4401');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Randy', 'Hultgren', 'House', 14);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Duncan', 'Hunter', 'House', 50);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Will', 'Hurd', 'House', 23);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Darrell', 'Issa', 'House', 49);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Sheila', 'Jackson Lee', 'House', 18);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WA', 'Pramila', 'Jayapal', 'House', 7);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Hakeem', 'Jeffries', 'House', 8);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WV', 'Evan', 'Jenkins', 'House', 3, 'R', 'https://evanjenkins.house.gov/contact/', '307 Prince Street' '', 'Beckley', '25801', '304-250-6177', '1609 Longworth HOB', '', '20515', '202-225-3452');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('KS', 'Lynn', 'Jenkins', 'House', 2);

--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('OH', 'Bill', 'Johnson', 'House', 6, 'R', 'https://billjohnson.house.gov/contact/', '246 Front St.', '', 'Marietta', '45750', '740-376-0868', '2336 Rayburn HOB', '', '20515', '202-225-5705');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Eddie', 'Johnson', 'House', 30);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('GA', 'Henry', 'Johnson', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('LA', 'Mike', 'Johnson', 'House', 4);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Sam', 'Johnson', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'Brenda', 'Jones', 'House', 13, 'D', 'http://www.brendajonesforcongress.com/contact/', 'P.O. Box 21146', '', 'Detroit', '48221', '313-576-6686', '2426 Rayburn HOB', '', '20515-2213', '202-225-5126');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NC', 'Walter', 'Jones', 'House', 3);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('OH', 'Jim', 'Jordan', 'House', 4, 'R', 'https://jordan.house.gov/contact/', '3121 West Elm Plaza', '', 'Lima', '45805', '419-999-6455', '2056 Rayburn House Office Building', '', '20515', '202-225-2676');

--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('OH', 'David', 'Joyce', 'House', 14, 'R', 'https://joyce.house.gov/email-me/', '8500 Station Street', '', 'Mentor', '44060', '440-352-3939', '1124 Longworth HOB', '', '20515', '202-225-5731');

--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('OH', 'Marcy', 'Kaptur', 'House', 9, 'D', 'https://kaptur.house.gov/contact/email', '17021 Lorain', '', 'Cleveland', '44111', '216-767-5933', '2186 Rayburn Building', '', '20515', '202-225-4146');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'John', 'Katko', 'House', 24);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MA', 'William', 'Keating', 'House', 9);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Mike', 'Kelly', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Robin', 'Kelly', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MS', 'Trent', 'Kelly', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MA', 'Joseph', 'Kennedy III', 'House', 4);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Ro', 'Khanna', 'House', 17);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NV', 'Ruben', 'Kihuen', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'Daniel', 'Kildee', 'House', 5, 'D', 'https://dankildee.house.gov/contact/email', '111 East court St.', '#3B', 'Flint', '48502', '810-238-8627', '227 Cannon House Office Building', '', '20515', '202-225-3611');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WA', 'Derek', 'Kilmer', 'House', 6);

--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('WI', 'Ron', 'Kind', 'House', 3, 'D', 'https://kind.house.gov/contact/email', '205 Fifth Ave S.', 'Suite 400', 'La Crosse', '54601', '608-782-2558', '1502 Longworth House Office Building', '', '20515', '202-225-5506');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Peter', 'King', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IA', 'Steve', 'King', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Adam', 'Kinzinger', 'House', 16);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Stephen', 'Knight', 'House', 25);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Raja', 'Krishnamoorthi', 'House', 8);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NH', 'Ann', 'Kuster', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TN', 'David', 'Kustoff', 'House', 8);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('ID', 'Raul', 'Labrador', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Darin', 'LaHood', 'House', 18);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Doug', 'LaMalfa', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Conor', 'Lamb', 'House', 18);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CO', 'Doug', 'Lamborn', 'House', 5);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NJ', 'Leonard', 'Lance', 'House', 7);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('RI', 'James', 'Langevin', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WA', 'Rick', 'Larsen', 'House', 2);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CT', 'John', 'Larson', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('OH', 'Bob', 'Latta', 'House', 5, 'R', 'https://latta.house.gov/contact/', '1045 N. Main St.', 'Suite 6', 'Bowling Green', '43402', '419-354-8700', '2467 Rayburn House Office Building', '', '20515', '202-225-6405');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'Brenda', 'Lawrence', 'House', 14, 'D', 'https://lawrence.house.gov/contact/email', '5555 Conner Avenue', 'Suite 2215', 'Detroit', '48213', '313-423-6183', '2463 Rayburn House Office Building', '', '20515', '202-225-5802');

--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('OH', 'Bob', 'Latta', 'House', 5, 'R', 'https://latta.house.gov/contact/', '1045 N. Main St.', 'Suite 6', 'Bowling Green', '43402', '419-354-8700', '2467 Rayburn House Office Building', '', '20515', '202-225-6405');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'Brenda', 'Lawrence', 'House', 14);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Al', 'Lawson Jr.', 'House', 5);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Barbara', 'Lee', 'House', 13);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AZ', 'Debbie', 'Lesko', 'House', 8);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'Sander', 'Levin', 'House', 9, 'D', 'https://levin.house.gov/contact-me/email-me', '27085 Gratiot Ave', '', 'Roseville', '48066', '586-498-7122', '1236 Longworth HOB', '', '20515', '888-810-3880');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MN', 'Jason', 'Lewis', 'House', 2);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('GA', 'John', 'Lewis', 'House', 5);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Ted', 'Lieu', 'House', 33);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Daniel', 'Lipinski', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NJ', 'Frank', 'LoBiondo', 'House', 2);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IA', 'David', 'Loebsack', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Zoe', 'Lofgren', 'House', 19);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MO', 'Billy', 'Long', 'House', 7);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('GA', 'Barry', 'Loudermilk', 'House', 11);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('UT', 'Mia', 'Love', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Alan', 'Lowenthal', 'House', 47);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Nita', 'Lowey', 'House', 17);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('OK', 'Frank', 'Lucas', 'House', 3);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MO', 'Blaine', 'Luetkemeyer', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NM', 'Ben', 'Lujan', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NM', 'Michelle', 'Lujan Grisham', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MA', 'Stephen', 'Lynch', 'House', 8);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NJ', 'Thomas', 'MacArthur', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Carolyn', 'Maloney', 'House', 12);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Sean', 'Maloney', 'House', 18);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Kenny', 'Marchant', 'House', 24);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Tom', 'Marino', 'House', 10);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('KS', 'Roger', 'Marshall', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('KY', 'Thomas', 'Massie', 'House', 4, 'R', 'https://massieforms.house.gov/contact/', '1700 Greenup Ave', 'Suite 505', 'Ashland', '41101', '606-324-9898', '2453 Rayburn HOB', '', '20515', '202-225-3465');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Brian', 'Mast', 'House', 18);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Doris', 'Matsui', 'House', 6);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Kevin', 'McCarthy', 'House', 23);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Michael', 'McCaul', 'House', 10);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Tom', 'McClintock', 'House', 4);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MN', 'Betty', 'McCollum', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('VA', 'Donald', 'McEachin', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MA', 'James', 'McGovern', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NC', 'Patrick', 'McHenry', 'House', 10);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WV', 'David', 'McKinley', 'House', 1, 'R', 'https://mckinley.house.gov/contact/', '709 Beechurst Ave.', 'Suite 29', 'Morgantown', '26505', '304-284-8506', '2239 Rayburn HOB', '', '20515', '202-225-4172');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WA', 'Cathy', 'McMorris Rodgers', 'House', 5);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Jerry', 'McNerney', 'House', 9);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AZ', 'Martha', 'McSally', 'House', 2);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NC', 'Mark', 'Meadows', 'House', 11);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Gregory', 'Meeks', 'House', 5);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Grace', 'Meng', 'House', 6);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('IN', 'Luke', 'Messer', 'House', 6, 'R', 'https://messer.house.gov/contact/', '107 W. Charles St.', '', 'Muncie', '47305', '765-747-5566', '1230 Longworth House', 'Office Building', '20515', '202-225-3021');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'Paul', 'Mitchell', 'House', 10, 'R', 'https://mitchell.house.gov/contact', '48701 Van Dyke Avenue', '', 'Shelby Township', '48317', '586-997-5010', '211 Cannon House Office Building', '', '20515', '202-225-2106');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'John', 'Moolenaar', 'House', 4, 'R', 'https://moolenaar.house.gov/contact/email', '201 North Mitchell Street', 'Suite 301', 'Cadillac', '49601', '231-942-5070', '117 Cannon House Office Building', '', '20515', '202-225-3561');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WV', 'Alexander', 'Mooney', 'House', 2, 'R', 'https://mooney.house.gov/contact/email', '405 Capitol Street', 'Suite 514', 'Charleston', '25301', '304-925-5964', '2440 Rayburn House Office Building', '', '20515', '202-225-2711');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WI', 'Gwen', 'Moore', 'House', 4, 'D', 'https://gwenmoore.house.gov/contact/', '316 N Milwaukee St', 'Suite 406', 'Milwaukee', '53202', '414-297-1140', '2252 Rayburn HOB', '', '20515', '202-225-4572');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'Paul', 'Mitchell', 'House', 10);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'John', 'Moolenaar', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WV', 'Alexander', 'Mooney', 'House', 2);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('WI', 'Gwen', 'Moore', 'House', 4, 'D', 'https://gwenmoore.house.gov/contact/', '316 N Milwaukee St', 'Suite 406', 'Milwaukee', '53202', '414-297-1140', '2252 Rayburn HOB', '', '20515', '202-225-4572');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Joseph', 'Morelle', 'House', 25);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MA', 'Seth', 'Moulton', 'House', 6);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('OK', 'Markwayne', 'Mullin', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Stephanie', 'Murphy', 'House', 7);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Jerrold', 'Nadler', 'House', 10);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Grace', 'Napolitano', 'House', 32);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MA', 'Richard', 'Neal', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WA', 'Dan', 'Newhouse', 'House', 4);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('SD', 'Kristi', 'Noem', 'House', 'R', 'https://noem.house.gov/index.cfm/contact-kristi?p=contact', '300 N. Dakota Avenue', 'Suite 314', 'Sioux Falls', '57104', '605-275-2868', '2457 Rayburn House Office Building', '', '20515', '202-225-2801');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MN', 'Richard', 'Nolan', 'House', 8);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NJ', 'Donald', 'Norcross', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('SC', 'Ralph', 'Norman', 'House', 5);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Devin', 'Nunes', 'House', 22);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AZ', 'Tom', 'O''Halleran', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Pete', 'Olson', 'House', 22);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Beto', 'O''Rourke', 'House', 16);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MS', 'Steven', 'Palazzo', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NJ', 'Frank', 'Pallone Jr.', 'House', 6);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AL', 'Gary', 'Palmer', 'House', 6);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Jimmy', 'Panetta', 'House', 20);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NJ', 'Bill', 'Pascrell Jr.', 'House', 9);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MN', 'Erik', 'Paulsen', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NJ', 'Donald', 'Payne Jr.', 'House', 10);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NM', 'Stevan', 'Pearce', 'House', 2);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Nancy', 'Pelosi', 'House', 12);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CO', 'Ed', 'Perlmutter', 'House', 7);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Scott', 'Perry', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Scott', 'Peters', 'House', 52);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MN', 'Collin', 'Peterson', 'House', 7);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('ME', 'Chellie', 'Pingree', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NC', 'Robert', 'Pittenger', 'House', 9);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('WI', 'Mark', 'Pocan', 'House', 2, 'D', 'https://pocan.house.gov/contact/share-your-opinion', '10 East Doty Street', 'Suite 405', 'Madison', '53703', '608-258-9800', '1421 Longworth', 'House Office Building', '20515', '202-225-2906');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Ted', 'Poe', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('ME', 'Bruce', 'Poliquin', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CO', 'Jared', 'Polis', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Bill', 'Posey', 'House', 8);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NC', 'David', 'Price', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Mike', 'Quigley', 'House', 5);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MD', 'Jamie', 'Raskin', 'House', 8);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'John', 'Ratcliffe', 'House', 4);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Tom', 'Reed', 'House', 23);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WA', 'David', 'Reichert', 'House', 8);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('OH', 'Jim', 'Renacci', 'House', 16, 'R', 'https://renacci.house.gov/index.cfm/contact-form', '1 Park Center Drive', 'Suite 302', 'Wadsworth', '44281', '330-334-0040', '328 Cannon House Office Building', '', '20515', '202-225-3876');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Kathleen', 'Rice', 'House', 4);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('SC', 'Tom', 'Rice', 'House', 7);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('LA', 'Cedric', 'Richmond', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AL', 'Martha', 'Roby', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TN', 'David', 'Roe', 'House', 1);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('KY', 'Hal', 'Rogers', 'House', 5, 'R', 'https://halrogers.house.gov/email', '551 Clifty Street', '', 'Somerset', '42503', '606-679-8346', '2406 Rayburn House Office Building', '', '20515', '202-225-4601');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AL', 'Mike', 'Rogers', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Dana', 'Rohrabacher', 'House', 48);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('IN', 'Todd', 'Rokita', 'House', 4, 'R', 'https://rokita.house.gov/contact-me/email-me', '355 S. Washington Street', '', 'Danville', '46122', '317-718-0404', '2439 Rayburn House Office Building', '', '20515', '202-225-5037');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Francis', 'Rooney', 'House', 19);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Thomas', 'Rooney', 'House', 17);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NV', 'Jacky', 'Rosen', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Peter', 'Roskam', 'House', 6);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Ileana', 'Ros-Lehtinen', 'House', 27);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Dennis', 'Ross', 'House', 15);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Keith', 'Rothfus', 'House', 12);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NC', 'David', 'Rouzer', 'House', 7);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Lucille', 'Roybal-Allard', 'House', 40);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Edward', 'Royce', 'House', 39);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Raul', 'Ruiz', 'House', 36);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MD', 'Dutch', 'Ruppersberger', 'House', 2);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Bobby', 'Rush', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('OK', 'Steve', 'Russell', 'House', 5);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'John', 'Rutherford', 'House', 4);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('WI', 'Paul', 'Ryan', 'House', 1, 'R', 'https://paulryan.house.gov/contact/', '20 South Main Street', 'Suite 10', 'Janesville', '53545', '608-752-4050', '1233 Longworth House Office Bldg', '', '20515', '202-225-3031');

--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('OH', 'Tim', 'Ryan', 'House', 13, 'D', 'https://timryanforms.house.gov/contact/', '1030 Tallmadge Ave.', '', 'Akron', '44310', '330-630-7311', '1126 Longworth HOB', '', '20515', '202-225-5261');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Linda', 'Sanchez', 'House', 38);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('SC', 'Mark', 'Sanford', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MD', 'John', 'Sarbanes', 'House', 3);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('LA', 'Steve', 'Scalise', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Mary Gay', 'Scanlon', 'House', 7);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Janice', 'Schakowsky', 'House', 9);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Adam', 'Schiff', 'House', 28);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Brad', 'Schneider', 'House', 10);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('OR', 'Kurt', 'Schrader', 'House', 5);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AZ', 'David', 'Schweikert', 'House', 6);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('GA', 'Austin', 'Scott', 'House', 8);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('GA', 'David', 'Scott', 'House', 13);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('VA', 'Bobby', 'Scott', 'House', 3);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('WI', 'Jim', 'Sensenbrenner', 'House', 5, 'R', 'https://sensenbrenner.house.gov/contact', '120 Bishops Way', '#154', 'Brookfield', '53005', '262-784-1111', '2449 Rayburn HOB', '', '20515', '202-225-5101');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Jose', 'Serrano', 'House', 15);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Pete', 'Sessions', 'House', 32);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AL', 'Terri', 'Sewell', 'House', 7);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NH', 'Carol', 'Shea-Porter', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Brad', 'Sherman', 'House', 30);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'John', 'Shimkus', 'House', 15);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Bill', 'Shuster', 'House', 9);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('ID', 'Michael', 'Simpson', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AZ', 'Kyrsten', 'Sinema', 'House', 9);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NJ', 'Albio', 'Sires', 'House', 8);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WA', 'Adam', 'Smith', 'House', 9);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NE', 'Adrian', 'Smith', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NJ', 'Christopher', 'Smith', 'House', 4);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MO', 'Jason', 'Smith', 'House', 8);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Lamar', 'Smith', 'House', 21);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Lloyd', 'Smucker', 'House', 16);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Darren', 'Soto', 'House', 9);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Jackie', 'Speier', 'House', 14);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Elise', 'Stefanik', 'House', 21);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('UT', 'Chris', 'Stewart', 'House', 2);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('OH', 'Steve', 'Stivers', 'House', 15, 'R', 'https://stivers.house.gov/contact/', '3790 Municipal Way', '', 'Hilliard', '43026', '614-771-4968', '2234 Rayburn HOB', '', '20515', '202-225-2015');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Thomas', 'Suozzi', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Eric', 'Swalwell', 'House', 15);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Mark', 'Takano', 'House', 41);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('VA', 'Scott', 'Taylor', 'House', 2);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Claudia', 'Tenney', 'House', 22);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MS', 'Bennie', 'Thompson', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Glenn', 'Thompson', 'House', 5);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Mike', 'Thompson', 'House', 5);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Mac', 'Thornberry', 'House', 13);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CO', 'Scott', 'Tipton', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NV', 'Dina', 'Titus', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Paul', 'Tonko', 'House', 20);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Norma', 'Torress', 'House', 35);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'David', 'Trott', 'House', 11, 'R', 'https://trott.house.gov/contact', '625 East Big Beaver Road', 'Suite 204', 'Troy', '48083', '1722 Longworth House Office Building', '', '20515', '202-225-8171');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MA', 'Niki', 'Tsongas', 'House', 3);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('OH', 'Michael', 'Turner', 'House', 10, 'R', 'https://turner.house.gov/contact/email-me', '120 West 3rd St.', 'Suite 305', 'Dayton', '45402', '937-225-2843', '2082 Rayburn HOB', '', '20515', '202-225-6465');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'Fred', 'Upton', 'House', 6, 'R', 'https://upton.house.gov/contact/', '350 E. Michigan Ave.', 'Suite 130', 'Kalamazoo', '49007', '269-385-0039', '2183 Rayburn House Office Building', '', '20515', '202-225-3761');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'David', 'Valadao', 'House', 21);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Juan', 'Vargas', 'House', 51);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Marc', 'Veasey', 'House', 33);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Filemon', 'Vela', 'House', 34);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Nydia', 'Velazquez', 'House', 7);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('IN', 'Peter', 'Visclosky', 'House', 1 'D', 'https://visclosky.house.gov/contact-pete/email-pete', '7895 Broadway', 'Suite A', 'Merrillville', '46410', '219-795-1844', '2328 Rayburn Building', '', '20515', '202-225-2461');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MO', 'Ann', 'Wagner', 'House', 2);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'Tim', 'Walberg', 'House', 7, 'R', 'https://walberg.house.gov/contact/email', '401 W. Michigan Ave.', '', 'Jackson', '49201', '517-780-9075', '2266 Rayburn HOB', '', '20515', '202-225-6276');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('OR', 'Greg', 'Walden', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NC', 'Mark', 'Walker', 'House', 6);
--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('IN', 'Jackie', 'Walorski', 'House', 2, 'R', 'https://walorski.house.gov/contact/email/', '709 Main Street', '', 'Rochester', '46975', '574-223-4373', '419 Cannon House Office Building', '', '20515', '202-225-3915');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Mimi', 'Walters', 'House', 45);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MN', 'Timothy', 'Walz', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Debbie', 'Wasserman Schultz', 'House', 23);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Maxine', 'Waters', 'House', 43);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NJ', 'Bonnie', 'Watson Coleman', 'House', 12);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Randy', 'Weber Sr.', 'House', 14);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Daniel', 'Webster', 'House', 11);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('VT', 'Peter', 'Welch', 'House', 'D', 'https://welch.house.gov/contact', '128 Lakeside Ave', 'Suite 235', 'Burlington', '05401', '802-652-2450', '2303 Rayburn House', 'Office Building', '20515', '202-225-4115');

--INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('OH', 'Brad', 'Wenstrup', 'House', 2, 'R', 'https://wenstrup.house.gov/contact/', '7954 Beechmont Ave.', 'Suite 200', 'Cincinnati', '45255', '513-474-7777', '2419 Rayburn HOB', '', '20515', '202-225-3164');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AR', 'Bruce', 'Westerman', 'House', 4);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Susan', 'Wild', 'House', 15);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Roger', 'Williams', 'House', 25);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Frederica', 'Wilson', 'House', 24);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('SC', 'Joe', 'Wilson', 'House', 2);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('VA', 'Robert', 'Wittman', 'House', 1);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AR', 'Steve', 'Womack', 'House', 3);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('GA', 'Rob', 'Woodall', 'House', 7);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('KY', 'John', 'Yarmuth', 'House', 3, 'D', 'https://yarmuth.house.gov/contact-john2/', '600 Martin Luther King Jr. Place', 'Suite 216', 'Louisville', '40202', '502-582-5129', '402 Cannon House Office Building', 'U.S. House of Representatives', '20515', '202-225-5401');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('KS', 'Kevin', 'Yoder', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Ted', 'Yoho', 'House', 3);

-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IA', 'David', 'Young', 'House', 3);
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AK', 'Don', 'Young', 'House', '', 'R', 'https://donyoung.house.gov/contact/', '471 W. 36th Avenue', 'Suite 201', 'Anchorage', '99503', '907-271-5978', '2314 Rayburn House Office Building', '', '20515', '202-225-5765');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, district_id, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Lee', 'Zeldin', 'House', 1);


-- Senators

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WI', 'Tammy', 'Baldwin', 'Senate', 'D', 'www.alexander.senate.gov/public/index.cfm?p=Email', '30 West Mifflin Street', 'Suite 700', 'Madison', '53703', '608-264-5338', '709 Hart', 'Senate Office Building', '20510', '202-224-5653');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WY', 'John', 'Barrasso', 'Senate', 'R', 'https://www.barrasso.senate.gov/public/index.cfm/contact-form', '2120 Capitol Ave.', 'Suite 2013', 'Cheyenne', '82001', '307-772-2451', '307 Dirksen Senate Office Building', '', '20510', '202-224-6441');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('OH', 'Sherrod', 'Brown', 'Senate', 'D', 'www.brown.senate.gov/contact/', '801 West Superior Ave.', 'Suite 1400', 'Cleveland', '44113', '216-522-7272', '713 Hart', 'Senate Office Building', '20510', '202-224-2315');

--INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('WI', 'Tammy', 'Baldwin', 'Senate', 'D', 'www.alexander.senate.gov/public/index.cfm?p=Email', '30 West Mifflin Street', 'Suite 700', 'Madison', '53703', '608-264-5338', '709 Hart', 'Senate Office Building', '20510', '202-224-5653');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WY', 'John', 'Barrasso', 'Senate');
--INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('OH', 'Sherrod', 'Brown', 'Senate', 'D', 'www.brown.senate.gov/contact/', '801 West Superior Ave.', 'Suite 1400', 'Cleveland', '44113', '216-522-7272', '713 Hart', 'Senate Office Building', '20510', '202-224-2315');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WA', 'Maria', 'Cantwell', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MD', 'Benjamin', 'Cardin', 'Senate');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('DE', 'Thomas', 'Carper', 'Senate', 'D', 'https://www.carper.senate.gov/public/index.cfm/email-senator-carper', '301 North Walnut Street', 'Suite 102L-1', 'Wilmington', '19801-3974', '302-573-6291', '513 Hart Senate Office Building', '', '20510', '202-224-2441');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Robert', 'Casey Jr.', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TN', 'Bob', 'Corker', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'Ted', 'Cruz', 'Senate');
--INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('IN', 'Joe', 'Donnelly', 'Senate', 'D', 'https://www.donnelly.senate.gov/contact/email-joe', '115 N. Pennsylvania Street', 'Suite 100', 'Indianapolis', '46204', '317-226-5555', '720 Hart Senate Office Building', '', '20510', '202-224-4814');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Dianne', 'Feinstein', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NE', 'Deb', 'Fischer', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AZ', 'Jeff', 'Flake', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Kirsten', 'Gillibrand', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('UT', 'Orrin', 'Hatch', 'Senate');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NM', 'Martin', 'Heinrich', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('ND', 'Heidi', 'Heitkamp', 'Senate', 'D', 'https://www.heitkamp.senate.gov/public/index.cfm/email-heidi', '228 Federal Building', '220 East Rosser Avenue', 'Bismarck', '58501', '701-258-4648', 'SH-516 Hart Senate Office Building', '', '20510', '202-224-2043');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NV', 'Dean', 'Heller', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('HI', 'Mazie', 'Hirono', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('VA', 'Tim', 'Kaine', 'Senate');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('ME', 'Angus', 'King Jr.', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MN', 'Amy', 'Klobuchar', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WV', 'Joe', 'Manchin III', 'Senate', 'D', 'https://www.manchin.senate.gov/contact-joe/email-joe', '900 Pennsylvania Ave.', 'Suite 629', 'Charleston', '25302', '304-342-5855', '306 Hart Senate Office Building', '', '20510', '202-224-3954');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MO', 'Claire', 'McCaskill', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NJ', 'Robert', 'Menendez', 'Senate');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CT', 'Christopher', 'Murphy', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Bill', 'Nelson', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('VT', 'Bernie', 'Sanders', 'Senate', 'I', 'https://www.sanders.senate.gov/contact', '1 Church St.', '3rd Floor', 'Burlington', '05401', '802-862-0697', 'U.S. Senate', '332 Dirksen Building', '20510', '202-224-5141');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'Debbie', 'Stabenow', 'Senate', 'D', 'https://www.stabenow.senate.gov/contact', '221 W. Lake Lansing Road', 'Suite 100', 'East Lansing', '48823', '517-203-1760', '731 Hart Senate Office Building', '', '20510-2204', '202-224-4822');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MT', 'Jon', 'Tester', 'Senate', 'D', 'https://www.tester.senate.gov/contact/', '2900 4th Ave N.', 'Suite 201', 'Billings', '59101', '406-252-0550', '311 Hart Senate Office Building', '', '20510-2604', '202-224-2644');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MA', 'Elizabeth', 'Warren', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('RI', 'Sheldon', 'Whitehouse', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MS', 'Roger', 'Wicker', 'Senate');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TN', 'Lamar', 'Alexander', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NJ', 'Cory', 'Booker', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('LA', 'Bill', 'Cassidy', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('ME', 'Susan', 'Collins', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('DE', 'Chris', 'Coons', 'Senate', 'D', 'https://www.coons.senate.gov/contact', '500 W. Loockerman St.', 'Suite 450', 'Dover', '19904', '302-736-5601', '127A Russell Senate Office Building', '', '20510', '202-224-5042');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('TX', 'John', 'Cornyn', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AR', 'Tom', 'Cotton', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MT', 'Steve', 'Daines', 'Senate', 'R', 'https://www.daines.senate.gov/connect/email-steve', '222 N. 32nd Street', 'Suite 100', 'Billings', '59101', '406-245-6822', '320 Hart Senate Office Building', '', '20510', '202-224-2651');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Richard', 'Durbin', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WY', 'Michael', 'Enzi', 'Senate', 'R', 'https://www.enzi.senate.gov/public/index.cfm/e-mail-senator-enzi', 'Federal Center, Suite 2007', '2120 Capitol Avenue', 'Cheyenne', '82001', '307-772-2477', '379A Senate Russell', 'Office Building', '20510', '202-224-3424');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IA', 'Joni', 'Ernst', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CO', 'Cory', 'Gardner', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('SC', 'Lindsey', 'Graham', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MS', 'Cindy', 'Hyde-Smith', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('OK', 'James', 'Inhofe', 'Senate');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AL', 'Doug', 'Jones', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MA', 'Edward', 'Markey', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('KY', 'Mitch', 'McConnell', 'Senate', 'R', 'https://www.mcconnell.senate.gov/public/index.cfm/contact', '601 W. Broadway', 'Room 630', 'Louisville', '40202', '502-582-6304', '317 Russell Senate Office Building', '', '20510', '202-224-2541');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('OR', 'Jeff', 'Merkley', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('GA', 'David', 'Perdue', 'Senate');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MI', 'Gary', 'Peters', 'Senate', 'D', 'https://www.peters.senate.gov/contact/email-gary', '124 West Allegan St.', 'Suite 1400', 'Lansing', '48933', '517-377-1508', 'Hart Senate Office Building', 'Suite 724', '20510', '202-224-6221');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('RI', 'Jack', 'Reed', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('ID', 'James', 'Risch', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('KS', 'Pat', 'Roberts', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('SD', 'Mike', 'Rounds', 'Senate', 'R', 'https://www.rounds.senate.gov/contact/email-mike', '111 W Capitol Ave.', 'Suite 210', 'Pierre', '57501', '605-224-1450', 'Hart Senate Office Bldg.', 'Suite 502', '20510', '202-224-5842');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NE', 'Ben', 'Sasse', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NH', 'Jeanne', 'Shaheen', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MN', 'Tina', 'Smith', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AK', 'Dan', 'Sullivan', 'Senate', 'R', 'https://www.sullivan.senate.gov/contact', '510 L Street', 'Suite 750', 'Anchorage', '99501', '907-271-5915', '702 Hart Senate Office Building', '', '20510', '202-224-3004');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NC', 'Thom', 'Tillis', 'Senate');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NM', 'Tom', 'Udall', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('VA', 'Mark', 'Warner', 'Senate');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CO', 'Michael', 'Bennet', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CT', 'Richard', 'Blumenthal', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MO', 'Roy', 'Blunt', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AR', 'John', 'Boozman', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NC', 'Richard', 'Burr', 'Senate');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NV', 'Catherine', 'Cortez Masto', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('ID', 'Mike', 'Crapo', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IL', 'Tammy', 'Duckworth', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IA', 'Chuck', 'Grassley', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('CA', 'Kamala', 'Harris', 'Senate');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NH', 'Maggie', 'Hassan', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('ND', 'John', 'Hoeven', 'Senate', 'R', 'https://www.hoeven.senate.gov/contact', '220 East Rosser Ave.', 'Room 312', 'Bismarck', '58501', '701-250-4618', '338 Russell Senate Office Bldg.', '', '20510', '202-224-2551');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('GA', 'Johnny', 'Isakson', 'Senate');
--INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('WI', 'Ron', 'Johnson', 'Senate', 'R', 'https://www.ronjohnson.senate.gov/public/index.cfm/email-the-senator', '517 East Wisconsin Avenue', 'Suite 408', 'Milwaukee', '53202', '414-276-7282', '328 Hart', 'Senate Office Building', '20510', '202-224-5323');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('LA', 'John', 'Kennedy', 'Senate');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AZ', 'Jon', 'Kyl', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('OK', 'James', 'Lankford', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('VT', 'Patrick', 'Leahy', 'Senate', 'D', 'https://www.leahy.senate.gov/contact', '199 Main Street', '4th Floor', 'Burlington', '05401', '802-863-2525', '437 Russell Senate Bldg', '', '20510', '202-224-4242');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('UT', 'Mike', 'Lee', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('KS', 'Jerry', 'Moran', 'Senate');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AK', 'Lisa', 'Murkowski', 'Senate', 'R', 'https://www.murkowski.senate.gov/contact/email', '510 L Street', 'Suite 600', 'Anchorage', '99501', '907-271-3735', '522 Hart Senate Office Building', '', '20510', '202-224-6665');
-- -- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- -- VALUES('WA', 'Patty', 'Murray', 'Senate');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('KY', 'Rand', 'Paul', 'Senate', 'R', 'https://www.paul.senate.gov/connect/email-rand', '1029 State Street', '', 'Bowling Green', '42101', '270-782-8303', '167 Russell Senate Office Building', '', '20510', '202-224-4343');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('OH', 'Rob', 'Portman', 'Senate', 'R', 'https://www.portman.senate.gov/public/index.cfm/contact?p=contact-form', '37 West Broad Street', 'Room 300', 'Columbus', '43215', '614-469-6774', '448 Russell', 'Senate Office Building', '20510', '202-224-3353');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('KY', 'Rand', 'Paul', 'Senate');
--INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('OH', 'Rob', 'Portman', 'Senate', 'R', 'https://www.portman.senate.gov/public/index.cfm/contact?p=contact-form', '37 West Broad Street', 'Room 300', 'Columbus', '43215', '614-469-6774', '448 Russell', 'Senate Office Building', '20510', '202-224-3353');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('FL', 'Marco', 'Rubio', 'Senate');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('HI', 'Brian', 'Schatz', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('NY', 'Chuck', 'Schumer', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('SC', 'Tim', 'Scott', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('AL', 'Richard', 'Shelby', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('SD', 'John', 'Thune', 'Senate', 'R', 'https://www.thune.senate.gov/public/index.cfm/contact', '246 Founders Park Drive', 'Suite 102', 'Rapid City', '57701', '605-348-7551', 'United States Senate', 'SD-511', '20510', '202-224-2321');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('PA', 'Patrick', 'Toomey', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('MD', 'Chris', 'Van Hollen', 'Senate');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('OR', 'Ron', 'Wyden', 'Senate');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('IN', 'Todd', 'Young', 'Senate', 'R', 'https://www.young.senate.gov/contact/email-todd', '251 North Illinois Street', 'Suite 120', 'Indianapolis', '46204', '317-226-6700', '400 Russell Senate Office Building', '', '20510', '202-224-5623');
-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WV', 'Shelley', 'Moore Capito', 'Senate', 'R', 'https://www.capito.senate.gov/contact/contact-shelley', '500 Virginia Street East', 'Suite 950', 'Charleston', '25301', '304-347-5372', '172 Russell Senate Office Building', '', '20510', '202-224-6472');
--INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
--VALUES('IN', 'Todd', 'Young', 'Senate', 'R', 'https://www.young.senate.gov/contact/email-todd', '251 North Illinois Street', 'Suite 120', 'Indianapolis', '46204', '317-226-6700', '400 Russell Senate Office Building', '', '20510', '202-224-5623');

-- INSERT INTO representative(state_id, first_name, last_name, chamber, party, contact, local_street1, local_street2, local_city, local_zip, local_phone, dc_street1, dc_street2, dc_zip, dc_phone)
-- VALUES('WV', 'Shelley', 'Moore Capito', 'Senate');


COMMIT;
