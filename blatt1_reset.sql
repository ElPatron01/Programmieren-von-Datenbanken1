DROP DATABASE IF EXISTS krankenhaus;

CREATE DATABASE krankenhaus;

use krankenhaus;

CREATE TABLE station (
  id INT NOT NULL,
  name VARCHAR(45) NULL,
  anzahlbetten INT NULL,
  PRIMARY KEY (id));
  
insert into station values (1, 'HNO', 20), (2, 'Notaufnahme', 0), (3, 'Orthopädie', 9), (4, 'Innere Medizin', 12);  

# Tabelle arbeitet_in mit Fremdschlüssel, was noch nicht in der VL behandelt wurde!
CREATE TABLE arbeitet_in (
  pnr INT,
  stationid INT,
  CONSTRAINT FOREIGN KEY (stationid) REFERENCES station (id));