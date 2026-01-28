INSERT INTO studenti (nome, cognome, eta, residenza) VALUES
('Mario',    'Rossi',     19, 'Catania'),
('Giulia',   'Russo',     22, 'Siracusa'),
('Luca',     'Bianchi',   18, 'Palermo'),
('Sara',     'Romano',    25, 'Catania'),
('Davide',   'Conti',     20, 'Messina'),
('Elena',    'Mancini',   23, 'Siracusa'),
('Andrea',   'Giannini',  21, 'Ragusa'),
('Chiara',   'Ferrari',   17, 'Catania'),
('Marco',    'Gallo',     26, 'Palermo'),
('Francesca','Lombardi',  24, 'Enna'),
('Paolo',    'Costa',     28, 'Siracusa'),
('Noemi',    'Caputo',    19, 'Trapani');

INSERT INTO materie (nome, anno) VALUES
('Matematica', 1),
('Italiano',   1),
('Inglese',    1),
('Informatica',2),
('Storia',     2),
('Fisica',     2);

-- =========================
-- VOTI
-- (abbastanza righe per AVG/MIN/MAX/COUNT, GROUP BY, HAVING, JOIN)
-- Profitto e condotta con casi:
-- - promossi (profitto>=6 AND condotta>=7)
-- - bocciati per profitto
-- - bocciati per condotta
-- - eccellenze (>=9)
-- =========================

-- Studente 1: Mario Rossi (id=1)
INSERT INTO voti (studente_id, materia_id, profitto, condotta) VALUES
(1,1,7,8),(1,2,6,7),(1,3,8,8),(1,4,7,7),(1,5,6,8),(1,6,5,8);

-- Studente 2: Giulia Russo (id=2)
INSERT INTO voti (studente_id, materia_id, profitto, condotta) VALUES
(2,1,5,8),(2,2,7,8),(2,3,9,9),(2,4,8,8),(2,5,6,7),(2,6,7,6);

-- Studente 3: Luca Bianchi (id=3)
INSERT INTO voti (studente_id, materia_id, profitto, condotta) VALUES
(3,1,6,7),(3,2,5,6),(3,3,6,7),(3,4,4,7),(3,5,6,8),(3,6,7,8);

-- Studente 4: Sara Romano (id=4)
INSERT INTO voti (studente_id, materia_id, profitto, condotta) VALUES
(4,1,8,9),(4,2,7,8),(4,3,8,8),(4,4,9,9),(4,5,7,8),(4,6,8,9);

-- Studente 5: Davide Conti (id=5)
INSERT INTO voti (studente_id, materia_id, profitto, condotta) VALUES
(5,1,6,7),(5,2,6,7),(5,3,5,7),(5,4,6,6),(5,5,7,7),(5,6,6,8);

-- Studente 6: Elena Mancini (id=6)
INSERT INTO voti (studente_id, materia_id, profitto, condotta) VALUES
(6,1,4,8),(6,2,6,7),(6,3,7,8),(6,4,5,7),(6,5,6,8),(6,6,7,7);

-- Studente 7: Andrea Giannini (id=7)
INSERT INTO voti (studente_id, materia_id, profitto, condotta) VALUES
(7,1,7,6),(7,2,8,8),(7,3,6,7),(7,4,7,7),(7,5,5,8),(7,6,6,7);

-- Studente 8: Chiara Ferrari (id=8)
INSERT INTO voti (studente_id, materia_id, profitto, condotta) VALUES
(8,1,6,8),(8,2,4,6),(8,3,5,7),(8,4,6,8),(8,5,6,7),(8,6,5,6);

-- Studente 9: Marco Gallo (id=9)
INSERT INTO voti (studente_id, materia_id, profitto, condotta) VALUES
(9,1,9,8),(9,2,8,7),(9,3,9,9),(9,4,10,9),(9,5,8,8),(9,6,9,8);

-- Studente 10: Francesca Lombardi (id=10)
INSERT INTO voti (studente_id, materia_id, profitto, condotta) VALUES
(10,1,5,7),(10,2,6,7),(10,3,7,8),(10,4,6,7),(10,5,6,7),(10,6,7,8);

-- Studente 11: Paolo Costa (id=11)
INSERT INTO voti (studente_id, materia_id, profitto, condotta) VALUES
(11,1,3,6),(11,2,5,7),(11,3,6,6),(11,4,4,7),(11,5,5,6),(11,6,6,7);

-- Studente 12: Noemi Caputo (id=12)
INSERT INTO voti (studente_id, materia_id, profitto, condotta) VALUES
(12,1,6,7),(12,2,7,8),(12,3,6,7),(12,4,8,8),(12,5,7,8),(12,6,6,7);
