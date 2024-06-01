--USE master;
--IF DB_ID('SistemasHotel') IS NOT NULL
--DROP DATABASE SistemasHotel;
--CREATE DATABASE SistemasHotel;
--GO
--USE SistemasHotel;

--CREATE TABLE Cliente( 
--    CPF CHAR(11) PRIMARY KEY NOT NULL,
--    Nome VARCHAR(100) NOT NULL,
--    Sexo CHAR (1) NOT NULL
--	CHECK (Sexo='M' OR Sexo= 'F'),
--    Telefone VARCHAR(20));

--CREATE TABLE Quartos( 
--    Numero INTEGER PRIMARY KEY NOT NULL,
--    Descricao VARCHAR(10) NOT NULL,
--    Andar INTEGER NOT NULL,
--    Preco MONEY,
--    Tipo CHAR(1));

--CREATE TABLE Situacao( 
--    Cd_Situacao INTEGER PRIMARY KEY NOT NULL,
--    Ds_Situacao VARCHAR(20) NOT NULL);

--CREATE TABLE Reserva( 
--    Cd_Reserva INTEGER PRIMARY KEY NOT NULL,
--    Data DATE NOT NULL,
--    QtdDias INTEGER NOT NULL,
--    CPF CHAR(11) NOT NULL,
--    Numero INTEGER NOT NULL,
--    Cd_Situacao INTEGER NOT NULL,
--    FOREIGN KEY (CPF) REFERENCES Cliente (CPF),
--    FOREIGN KEY (Numero) REFERENCES Quartos (Numero),
--    FOREIGN KEY (Cd_Situacao) REFERENCES Situacao (Cd_Situacao));

--CREATE TABLE Ocupacao( 
--    Cd_Ocupacao INTEGER PRIMARY KEY NOT NULL,
--    DataEntrada DATE NOT NULL,
--    HoraEntrada TIME NOT NULL,
--    DataSaida DATE NOT NULL,
--    HoraSaida TIME NOT NULL,
--    ValorDiaria MONEY,
--    CPF CHAR(11) NOT NULL,
--    Numero INTEGER NOT NULL,
--    FOREIGN KEY (CPF) REFERENCES Cliente (CPF),
--    FOREIGN KEY (Numero) REFERENCES Quartos (Numero));

--CREATE TABLE Servicos( 
--    Codigo INTEGER PRIMARY KEY NOT NULL,
--    Descricao VARCHAR(20),
--    Tipo VARCHAR(20),
--    Valor MONEY);
                        
--CREATE TABLE Consumo( 
--    Item_Consumido INTEGER PRIMARY KEY NOT NULL,
--    Cd_Ocupacao INTEGER,
--    Codigo INTEGER,
--    Qt_Servico INTEGER,
--    Pr_Servico MONEY,
--    FOREIGN KEY (Cd_Ocupacao) REFERENCES Ocupacao (Cd_Ocupacao),
--    FOREIGN KEY (Codigo) REFERENCES Servicos (Codigo));

--INSERT INTO Cliente (CPF, Nome, Sexo, Telefone)
--VALUES
--    ('15940245608', 'Maria Joana Da Silva', 'F', '(81)985234879'),
--    ('78945618405', 'Matheus Borges Santos', 'M', '(81)987462545'),
--    ('85412498405', 'Ana Maria Silva', 'F', '(81)998452345'),
--    ('25436455425', 'Tomas Nascimento Rocha', 'M', '(81)988562470');

--INSERT INTO Quartos (Numero, Descricao, Andar, Preco, Tipo)
--VALUES
--    (204, 'Casal', 2, 350.23, 'P'),
--    (789, 'Solteiro', 8, 200, 'M'),
--    (4, 'Solteiro', 1, 150, 'P');

--INSERT INTO Situacao (Cd_Situacao, Ds_Situacao)
--VALUES
--    (1, 'Ocupado'),
--    (2, 'Disponivel');

--INSERT INTO Reserva (Cd_Reserva, Data, QtdDias, CPF, Numero, Cd_Situacao)
--VALUES
--    (1001, '2024-03-20', 3, '15940245608', 4, 1),
--    (1002, '2024-06-22', 5, '78945618405', 789, 1);

--INSERT INTO Ocupacao (Cd_Ocupacao, DataEntrada, HoraEntrada, DataSaida, HoraSaida, ValorDiaria, CPF, Numero)
--VALUES
--    (2001, '2024-03-20', '12:00:00', '2024-03-23', '12:00:00', 100, '15940245608', 4),
--    (2002, '2024-06-22', '12:00:00', '2024-06-27', '12:00:00', 150, '78945618405', 789);

--INSERT INTO Servicos (Codigo, Descricao, Tipo, Valor)
--VALUES
--    (1, 'Lavagem de roupas', 'Lavanderia', 50),
--    (2, 'Cafe da Manha', 'Buffet', 20),
--    (3, 'Janta', 'Buffet', 30);

--INSERT INTO Consumo (Item_Consumido, Cd_Ocupacao, Codigo, Qt_Servico, Pr_Servico)
--VALUES
--    (3, 2001, 3, 1, 30),
--    (1, 2002, 1, 2, 100);

--Select * from Reserva;
--Select * from Cliente;
--Select * from Quartos;
--Select * from Situacao;
--Select * from Ocupacao;
--Select * from Consumo;
--Select * from Servicos;