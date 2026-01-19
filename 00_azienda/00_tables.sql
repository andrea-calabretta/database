CREATE DATABASE 00_azienda;
USE 00_azienda;

CREATE TABLE impiegato (
  Matricola INT PRIMARY KEY,
  Nome VARCHAR(100) NOT NULL,
  Eta INT NOT NULL,
  Stipendio INT NOT NULL
);

CREATE TABLE supervisione (
  Impiegato INT,
  Capo INT,
  PRIMARY KEY (Impiegato),
  CONSTRAINT fk_supervisione_impiegato
    FOREIGN KEY (Impiegato) REFERENCES impiegato(Matricola),
  CONSTRAINT fk_supervisione_capo
    FOREIGN KEY (Capo) REFERENCES impiegato(Matricola)
);
