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

INSERT INTO mitarbeiter (pnr, name, vorname, gehalt) VALUES ( 1, 'Einstein', 'Albert', 10), ( 2, 'Merkel', 'Angela', 20), ( 3, 'Goethe', 'Wolfgang', 50);


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

INSERT INTO  arbeitet_in (pnr, stationid) VALUES (1, 2), (2, 1), (3, 2);
