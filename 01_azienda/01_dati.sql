INSERT INTO impiegato (Matricola, Nome, Eta, Stipendio) VALUES
(7309, 'Rossi', 34, 45),
(5998, 'Bianchi', 37, 38),
(9553, 'Neri', 42, 35),
(5698, 'Bruni', 43, 42),
(4076, 'Mori', 45, 50),
(8123, 'Lupi', 46, 60);

INSERT INTO supervisione (Impiegato, Capo) VALUES
(7309, 5698),
(5998, 5698),
(9553, 4076),
(5698, 4076),
(4076, 8123);