-- Autogenerated: do not edit this file
DROP TABLE  BATCH_STAGING_SEQ IF EXISTS;
DROP TABLE  TRADE_SEQ IF EXISTS;
DROP TABLE  CUSTOMER_SEQ IF EXISTS;
DROP TABLE  BATCH_STAGING IF EXISTS;
DROP TABLE  TRADE IF EXISTS;
DROP TABLE  CUSTOMER IF EXISTS;
DROP TABLE  PLAYERS IF EXISTS;
DROP TABLE  GAMES IF EXISTS;
DROP TABLE  PLAYER_SUMMARY IF EXISTS;

-- Autogenerated: do not edit this file

CREATE TABLE CUSTOMER_SEQ (
	ID BIGINT IDENTITY
);
CREATE TABLE BATCH_STAGING_SEQ (
	ID BIGINT IDENTITY
);
CREATE TABLE TRADE_SEQ (
	ID BIGINT IDENTITY
);

CREATE TABLE BATCH_STAGING  (
	ID BIGINT IDENTITY PRIMARY KEY ,  
	JOB_ID BIGINT NOT NULL,
	VALUE LONGVARBINARY NOT NULL,
	PROCESSED CHAR(1) NOT NULL
);

CREATE TABLE TRADE  (
	ID BIGINT IDENTITY PRIMARY KEY ,  
	VERSION BIGINT,
	ISIN VARCHAR(45) NOT NULL, 
	QUANTITY BIGINT,
	PRICE DOUBLE, 
	CUSTOMER VARCHAR(45)
);
 
CREATE TABLE CUSTOMER (
	ID BIGINT IDENTITY PRIMARY KEY ,  
	VERSION BIGINT,
	NAME VARCHAR(45),
	CREDIT DOUBLE
);
 
INSERT INTO customer (id, version, name, credit) VALUES (1, 0, 'customer1', 100000);
INSERT INTO customer (id, version, name, credit) VALUES (2, 0, 'customer2', 100000);
INSERT INTO customer (id, version, name, credit) VALUES (3, 0, 'customer3', 100000);
INSERT INTO customer (id, version, name, credit) VALUES (4, 0, 'customer4', 100000);

CREATE TABLE PLAYERS (
	PLAYER_ID char(8) NOT NULL PRIMARY KEY,  
	LAST_NAME varchar(35) not null,
	FIRST_NAME varchar(25) not null,
	POS varchar(10),
	YEAR_OF_BIRTH BIGINT not null,
	YEAR_DRAFTED BIGINT not null
);

CREATE TABLE GAMES (
   PLAYER_ID char(8) not null,
   YEAR_NO      BIGINT not null,
   TEAM      char(3) not null,
   WEEK      BIGINT not null,
   OPPONENT  char(3),
   COMPLETES BIGINT,
   ATTEMPTS  BIGINT,
   PASSING_YARDS BIGINT,
   PASSING_TD    BIGINT,
   INTERCEPTIONS BIGINT,
   RUSHES BIGINT,
   RUSH_YARDS BIGINT,
   RECEPTIONS BIGINT,
   RECEPTIONS_YARDS BIGINT,
   TOTAL_TD BIGINT
);

CREATE TABLE PLAYER_SUMMARY  (
		  ID CHAR(8) NOT NULL, 
		  YEAR_NO BIGINT NOT NULL,
		  COMPLETES BIGINT NOT NULL , 
		  ATTEMPTS BIGINT NOT NULL , 
		  PASSING_YARDS BIGINT NOT NULL , 
		  PASSING_TD BIGINT NOT NULL , 
		  INTERCEPTIONS BIGINT NOT NULL , 
		  RUSHES BIGINT NOT NULL , 
		  RUSH_YARDS BIGINT NOT NULL , 
		  RECEPTIONS BIGINT NOT NULL , 
		  RECEPTIONS_YARDS BIGINT NOT NULL , 
		  TOTAL_TD BIGINT NOT NULL
);