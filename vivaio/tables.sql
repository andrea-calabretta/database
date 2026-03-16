CREATE TABLE Specie (
    IdSpecie INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Immagine VARCHAR(255),
    Descrizione TEXT,
    ModoColtivazione TEXT,
    CaratteristicheEsposizione TEXT,
    Stagione ENUM('Estate', 'Inverno', 'Primavera', 'Autunno') NOT NULL,
    Tipo ENUM('Interno', 'Esterno')
);

CREATE TABLE Piante (
    IdPianta INT PRIMARY KEY AUTO_INCREMENT,
    IdSpecie INT NOT NULL,
    Tipo VARCHAR(50),
    Prezzo DECIMAL(10, 2) NOT NULL,
    Quantita INT NOT NULL,
    FOREIGN KEY (IdSpecie) REFERENCES Specie(IdSpecie)
);

CREATE TABLE Personale (
    IdPersonale INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Cognome VARCHAR(100) NOT NULL,
    Qualifica ENUM('Agronomo', 'Operaio', 'Amministrativo') NOT NULL,
    AnnoAssunzione YEAR
);

# Quale AGRONOMO è responsabile di quale SPECIE
CREATE TABLE Responsabilita (
    IdResponsabilita INT PRIMARY KEY AUTO_INCREMENT,
    IdAgronomo INT NOT NULL,
    IdSpecie INT NOT NULL,
    FOREIGN KEY (IdAgronomo) REFERENCES Personale(IdPersonale),
    FOREIGN KEY (IdSpecie) REFERENCES Specie(IdSpecie)
);

CREATE TABLE AttivitaEsterne (
    IdAttivita INT PRIMARY KEY AUTO_INCREMENT,
    Codice VARCHAR(50) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    CostoOrario DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Clienti (
    IdCliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20),
    Tipo ENUM('Privato', 'Azienda') NOT NULL
);

CREATE TABLE Prenotazioni (
    IdPrenotazione INT PRIMARY KEY AUTO_INCREMENT,
    IdAttivita INT NOT NULL,
    IdCliente INT NOT NULL,
    DataPrenotazione DATE NOT NULL,
    DataIntervento DATE,
    NecessitaPiante BOOLEAN NOT NULL,
    FOREIGN KEY (IdAttivita) REFERENCES AttivitaEsterne(IdAttivita),
    FOREIGN KEY (IdCliente) REFERENCES Clienti(IdCliente)
);



