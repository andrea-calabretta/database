CREATE TABLE libro (
  ID INT PRIMARY KEY,
  Titolo VARCHAR(255) NOT NULL,
  Autore VARCHAR(255) NOT NULL,
  AnnoPubblicazione INT,
  Genere VARCHAR(100),
  Editore VARCHAR(100)
);

CREATE TABLE utente (
  ID INT PRIMARY KEY,
  Nome VARCHAR(100) NOT NULL,
  Cognome VARCHAR(100) NOT NULL,
  DataNascita DATE,
  Indirizzo VARCHAR(255),
  Citta VARCHAR(100)
);

CREATE TABLE biblioteca (
  Nome VARCHAR(100),
  Citta VARCHAR(100),
  PRIMARY KEY (Nome)
);

CREATE TABLE prestito (
  ID INT PRIMARY KEY,
  ID_Utente INT NOT NULL,
  ID_Libro INT NOT NULL,
  DataInizio DATE NOT NULL,
  DataFine DATE NOT NULL,
  Restituito BOOLEAN NOT NULL,
  CONSTRAINT fk_prestito_utente
    FOREIGN KEY (ID_Utente) REFERENCES utente(ID),
  CONSTRAINT fk_prestito_libro
    FOREIGN KEY (ID_Libro) REFERENCES libro(ID)
);

CREATE TABLE disponibilita (
  ID_Libro INT,
  Biblioteca VARCHAR(100),
  CopieDisponibili INT NOT NULL,
  PRIMARY KEY (ID_Libro, Biblioteca),
  CONSTRAINT fk_disp_libro
    FOREIGN KEY (ID_Libro) REFERENCES libro(ID),
  CONSTRAINT fk_disp_biblioteca
    FOREIGN KEY (Biblioteca) REFERENCES biblioteca(Nome)
);
