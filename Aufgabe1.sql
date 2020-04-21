/*
PDB2020 - Aufgabe1
Vorname: Jannik 
Nachname: Zorn
MNr.: 
*/

-- Aufgabe 1a)

use krankenhaus;

CREATE TABLE mitarbeiter (
  pnr INT NOT NULL,
  name VARCHAR(45) NULL,
  vorname VARCHAR(45) NULL,
  gehalt INT NULL,
  PRIMARY KEY (pnr));


-- Aufgabe 1b)

UPDATE mitarbeiter SET pnr = 1, name = 'Einstein', vorname = 'Albert', gehalt = 10;
UPDATE mitarbeiter SET pnr = 2, name = 'Merkel', vorname = 'Angela', gehalt = 20;
UPDATE mitarbeiter SET pnr = 3, name = 'Goethe', vorname = 'Wolfgang', gehalt = 5.0;


-- Aufgabe 1c)

SELECT name, anzahlbetten FROM krankenhaus.station;

/*
Output Aufgabe 1c:
MariaDB [krankenhaus]> SELECT name, anzahlbetten FROM krankenhaus.station;
+----------------+--------------+
| name           | anzahlbetten |
+----------------+--------------+
| HNO            |           20 |
| Notaufnahme    |            0 |
| Orthopädie     |            9 |
| Innere Medizin |           12 |
+----------------+--------------+
*/


-- Aufgabe 1d)

SELECT * FROM krankenhaus.station WHERE anzahlbetten > 10;

/*
Output Aufgabe 1d)
+----+----------------+--------------+
| id | name           | anzahlbetten |
+----+----------------+--------------+
|  1 | HNO            |           20 |
|  4 | Innere Medizin |           12 |
+----+----------------+--------------+
*/

-- Aufgabe 1e)

UPDATE arbeitet_in SET pnr = 1, stationid = 2;
UPDATE arbeitet_in SET pnr = 2, stationid = 1;
UPDATE arbeitet_in SET pnr = 3, stationid = 2;