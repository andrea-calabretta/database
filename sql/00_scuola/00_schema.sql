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
  id_studente INT NOT NULL,
  id_materia INT NOT NULL,
  profitto INT NOT NULL,   
  condotta INT NOT NULL,   
  FOREIGN KEY (id_studente) REFERENCES studenti(id),
  FOREIGN KEY (id_materia) REFERENCES materie(id)
);

