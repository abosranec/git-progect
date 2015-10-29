CREATE TABLE Branch
(
  bno NUMBER(5) PRIMARY KEY,
  street VARCHAR2(60),
  city VARCHAR2(60) NOT NULL,
  tel_no VARCHAR2(17) UNIQUE,
  CONSTRAINT Check_branch_city CHECK (city IN ('Brest', 'Vitebsk', 'Gomel', 'Grodno', 'Mogilev', 'Minsk'))
);

CREATE TABLE Owner
(
  ono NUMBER(5) PRIMARY KEY,
  fname VARCHAR2(60) NOT NULL,
  lname VARCHAR2(60),
  address VARCHAR2(120) NOT NULL,
  tel_no VARCHAR2(17) UNIQUE
);

CREATE TABLE Property_for_rent
(
  pno NUMBER(5) PRIMARY KEY,
  street VARCHAR2(120),
  city VARCHAR2(60) NOT NULL,
  type VARCHAR2(1) NOT NULL,
  rooms NUMBER(2) NOT NULL,
  rent NUMBER(16,2) NOT NULL,
  ono NUMBER(5),
  sno NUMBER(5),
  bno NUMBER(5), 
	  CONSTRAINT Primary_prop1 FOREIGN KEY (ono) REFERENCES Owner,
	  CONSTRAINT Primary_prop2 FOREIGN KEY (sno) REFERENCES Staff,
	  CONSTRAINT Primary_prop3 FOREIGN KEY (bno) REFERENCES Branch,
	  CONSTRAINT Check_type CHECK (type IN ('h','f')),
	  CONSTRAINT Check_prop_city CHECK (city IN ('Brest', 'Vitebsk', 'Gomel', 'Grodno', 'Mogilev', 'Minsk'))
);

CREATE TABLE Renter
(
  rno NUMBER(5) PRIMARY KEY,
  fname VARCHAR2(60) NOT NULL,
  lname VARCHAR2(60),
  address VARCHAR2(120) NOT NULL UNIQUE,
  tel_no VARCHAR2(17) UNIQUE,
  pref_type VARCHAR2(1),
  max_rent NUMBER(16) NOT NULL,
  bno NUMBER(5) NOT NULL, 
	  CONSTRAINT Check_pref_type CHECK (pref_type IN ('h','f')),
	  CONSTRAINT Primary_renter FOREIGN KEY (bno) REFERENCES Branch (bno)
);

CREATE TABLE Staff
(
  sno NUMBER(5) PRIMARY KEY,
  fname VARCHAR2(60) NOT NULL,
  lname VARCHAR2(60) NOT NULL,
  address VARCHAR2(120) NOT NULL,
  tel_no VARCHAR2(17),
  position VARCHAR2(100) NOT NULL,
  sex VARCHAR2(6) NOT NULL,
  dob DATE,
  salary NUMBER(16),
  bno NUMBER(5),
	  CONSTRAINT Foreign_staff FOREIGN KEY (bno) REFERENCES Branch (bno),
	  CONSTRAINT Check_sex CHECK (sex IN ('Male', 'Female'))
);

CREATE TABLE Viewing
(
  rno NUMBER(5), 
  pno NUMBER(5), 
  date1 DATE,
  comment1 VARCHAR2(1000),
     CONSTRAINT Primary_viewing PRIMARY KEY (rno, pno),
	 CONSTRAINT Primary_viewing1 FOREIGN KEY (rno) REFERENCES Renter,
     CONSTRAINT Primary_viewing2 FOREIGN KEY (pno) REFERENCES Property_for_rent
);

CREATE SEQUENCE Branch_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE;
CREATE SEQUENCE Staff_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE;
CREATE SEQUENCE Renter_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE;
CREATE SEQUENCE Owner_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE;
CREATE SEQUENCE Prop_seq START WITH 1 INCREMENT BY 1 NOMAXVALUE;

CREATE INDEX Staff_index ON Staff(address ASC); 
CREATE INDEX Renter_index ON Property_for_rent(street ASC); 
CREATE SYNONYM Viewing_syn FOR Viewing;
CREATE SYNONYM Branch_syn FOR Branch;

select * from Branch;
select * from Staff;
select * from Renter;
select * from Owner;
select * from Property_for_rent;
select * from Viewing;