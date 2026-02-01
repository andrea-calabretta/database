CREATE TABLE studenti (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  cognome VARCHAR(50) NOT NULL,
  eta INT NOT NULL,
  residenza VARCHAR(50) NOT NULL
);

CREATE TABLE materie (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(60) NOT NULL,
  anno INT NOT NULL
);

CREATE TABLE iscrizioni (
  id INT PRIMARY KEY AUTO_INCREMENT,
  studente_id INT NOT NULL,
  materia_id INT NOT NULL,
  profitto INT NOT NULL,   
  condotta INT NOT NULL,   
  FOREIGN KEY (studente_id) REFERENCES studenti(id),
  FOREIGN KEY (materia_id) REFERENCES materie(id)
);

