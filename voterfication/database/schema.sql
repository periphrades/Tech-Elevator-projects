-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

BEGIN;

DROP TABLE IF EXISTS question;
DROP TABLE IF EXISTS representative;
DROP TABLE IF EXISTS states;
DROP TABLE IF EXISTS app_user;
DROP TABLE IF EXISTS townhall;



  CREATE TABLE app_user (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(32) NOT NULL UNIQUE,
    password VARCHAR(32) NOT NULL,
    role VARCHAR(32) default 'user',
    salt VARCHAR(255) NOT NULL
  );

  CREATE TABLE states(
    state_id CHAR(2) NOT NULL PRIMARY KEY,
    state_name VARCHAR(64)
  );

  CREATE TABLE representative (
    representative_id VARCHAR(10) NOT NULL PRIMARY KEY,
    state_id CHAR(2) NOT NULL,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    chamber VARCHAR(64) NOT NULL,
    district_id VARCHAR(10),
    party VARCHAR(20),
    contact VARCHAR(254),
    url VARCHAR(254),
    local_street1 VARCHAR(100),
    local_street2 VARCHAR(100),
    local_city VARCHAR(60),
    local_zip VARCHAR(10),
    local_phone VARCHAR(30),
    DC_street1 VARCHAR(100),
    DC_street2 VARCHAR(100),
    DC_zip VARCHAR(100),
    DC_phone VARCHAR(30),
    edited BOOLEAN,
    

      CONSTRAINT fk_representative FOREIGN KEY (state_id) REFERENCES states(state_id)

  );

CREATE TABLE question (
  question_id SERIAL NOT NULL PRIMARY KEY,
  user_id INTEGER NOT NULL,
  submitted_message VARCHAR(1024) NOT NULL,
  date_posted DATE,

    CONSTRAINT fk_question_app_user FOREIGN KEY (user_id) REFERENCES app_user(id)
  );

CREATE TABLE townhall (
  townhall_id SERIAL NOT NULL PRIMARY KEY,
  representative_id VARCHAR(10) NOT NULL,
  townhall_name VARCHAR(128),
  townhall_address VARCHAR(100),
  townhall_city VARCHAR(60),
  state_id CHAR(2) NOT NULL,
  townhall_zip VARCHAR(10),
  townhall_date DATE,

    CONSTRAINT fk_townhall_representative FOREIGN KEY (representative_id) REFERENCES representative(representative_id),
    CONSTRAINT fk_townhall_state FOREIGN KEY (state_id) REFERENCES states(state_id)

  );

CREATE TABLE question_recipient(
  question_id int NOT NULL,
  representative_id VARCHAR(10),
  townhall_id int,

    CONSTRAINT fk_question_id FOREIGN KEY (question_id) REFERENCES question(question_id)

);



COMMIT;