--USE master;
--IF DB_ID('Cinema') IS NOT NULL
--   DROP DATABASE Cinema;
--CREATE DATABASE Cinema;
--GO
--USE Cinema;
-----------------------------------------------------------------------------------------------------------
--CREATE TABLE Distribuidora(
--       Id_Distribuidora         0INTEGER         IDENTITY        PRIMARY KEY,    
--       Nome                     VARCHAR(50)     NOT NULL
--);

--insert into Distribuidora (Nome) values ('Sony Pictures'),
--										('Paris Filmes'),
--										('Universal Pictures Brasil'),
--										('Warner Bros');

--select * from Distribuidora;
-----------------------------------------------------------------------------------------------------------
--CREATE TABLE Genero (
--       Id_Genero                INTEGER         IDENTITY        PRIMARY KEY,
--       Descricao                VARCHAR(30)     NOT NULL
--);

--insert into Genero (Descricao) values	('Ação'),
--										('Aventura'),
--										('Terror'),
--										('Èpico'),
--										('Animação');

--select * from Genero;
-----------------------------------------------------------------------------------------------------------
--CREATE TABLE Titulo (
--       Id_Titulo                INTEGER         IDENTITY        PRIMARY KEY,
--       Nome                     VARCHAR(50)     NOT NULL,    
--       NomeOriginal             VARCHAR(50)     NOT NULL,   
--       AnoProducao              INTEGER         NOT NULL,    
--       Id_Distribuidora         INTEGER         NOT NULL        REFERENCES Distribuidora(Id_Distribuidora),   
--       Id_Genero                INTEGER         NOT NULL        REFERENCES Genero(Id_Genero),
--);

--insert into Titulo (Nome, NomeOriginal, AnoProducao, Id_Distribuidora, Id_Genero) values	('Contra o Mundo', 'Boy Kill World', 2024, 2 , 1),
--																							('Ghostbusters: Apocalipse do Gelo', 'Ghostbusters: Frozen Empire', 2024, 1, 2),
--																							('Abigail', 'Abigail', 2024, 3,3),
--																							('Joge da Capadócia', 'Joge da Capadócia', 2024, 2,4 ),
--																							('Garfield - Fora de Casa','The Garfield Movie', 2024, 1, 5),
--																							('Godzilla X Kong: O novo império' , 'Godzilla X Kong: The new Empire', 2024, 4, 1);

--select * from Titulo;
-----------------------------------------------------------------------------------------------------------
--CREATE TABLE Sala (
--       Id_Sala                  INTEGER         IDENTITY        PRIMARY KEY,
--       Nome                     VARCHAR(20)     NOT NULL,    
--       Situacao                 CHAR(1)         NOT NULL        CHECK(Situacao IN ('D','I'))
--);

--insert into Sala (Nome, Situacao)	values	('Sala 1', 'D'),
--											('Sala 2', 'I'),
--											('Sala 3', 'D'),
--											('Sala 4', 'I'),
--											('Sala 5', 'D');

--select * from Sala;
-----------------------------------------------------------------------------------------------------------
--CREATE TABLE Assento (
--       Id_Assento               INTEGER         IDENTITY        PRIMARY KEY,
--       Cadeira                  VARCHAR(5)      NOT NULL,
--       Situacao                 CHAR(1)         NOT NULL        CHECK(Situacao IN ('D','I')),
--       Id_Sala                  INTEGER         NOT NULL        REFERENCES Sala(Id_Sala)
--);

--insert into Assento (Cadeira, Situacao, Id_Sala) values		('1', 'D' , 1),
--															('2', 'D' , 1),
--															('3', 'I' , 1),
--															('4', 'D' , 1),
--															('5', 'D' , 1),
--															('6', 'I' , 1),
--															('7', 'D' , 1),
--															('8', 'D' , 1),
--															('9', 'I' , 1),
--															('10', 'D' , 1),
--															('1', 'D' , 2),
--															('2', 'D' , 2),
--															('3', 'D' , 2),
--															('4', 'D' , 2),
--															('5', 'D' , 2),
--															('1', 'I' , 3),
--															('2', 'D' , 3),
--															('3', 'I' , 3),
--															('4', 'D' , 3),
--															('5', 'I' , 3),
--															('6', 'D' , 3),
--															('7', 'I' , 3),
--															('8', 'D' , 3),
--															('9', 'I' , 3),
--															('10', 'D' , 3),
--															('1', 'D' , 4),
--															('2', 'D' , 4),
--															('3', 'D' , 4),
--															('4', 'D' , 4),
--															('5', 'D' , 4),
--															('6', 'D' , 4),
--															('1', 'D' , 5),
--															('2', 'D' , 5),
--															('3', 'D' , 5),
--															('4', 'D' , 5),
--															('5', 'I' , 5),
--															('6', 'D' , 5),
--															('7', 'D' , 5),
--															('8', 'D' , 5);

select * from Assento;
															
-----------------------------------------------------------------------------------------------------------
--CREATE TABLE Sessao (    
--       Id_Sessao                INTEGER         IDENTITY        PRIMARY KEY,    
--       HoraInicio               TIME(0)         NOT NULL,  
--       HoraTermino              TIME(0)         NOT NULL,
--);

--insert into Sessao (HoraInicio, HoraTermino) values				('18:30', '20:11'),
--																('21:10', '22:51'),
--																('15:20', '17:14'),
--																('18:00', '19:54'),
--																('20:50', '22:44'),
--																('18:40', '18:40'),
--																('21:30', '21:30');

--select * from Sessao;
-----------------------------------------------------------------------------------------------------------
--CREATE TABLE Ingresso (
--       Id_Ingresso              INTEGER         IDENTITY        PRIMARY KEY, 
--       Id_Titulo                INTEGER         NOT NULL        REFERENCES Titulo (Id_Titulo),    
--       Id_Sessao                INTEGER         NOT NULL        REFERENCES Sessao (Id_Sessao),    
--       Id_Assento               INTEGER         NOT NULL        REFERENCES Assento(Id_Assento),
--	   Situacao                 CHAR(1)         NOT NULL        CHECK(Situacao IN ('D','V')) 
--);

--insert into  Ingresso (Id_Titulo, Id_Assento, Id_Sessao, Situacao)	values	(1, 1, 1, 'D'),
--																			(1, 2, 1, 'V'),
--																			(1, 4, 1, 'D'),
--																			(1, 5, 1, 'V'),
--																			(1, 7, 1, 'D'),
--																			(1, 8, 1, 'V'),
--																			(1, 10, 1, 'D'),
--																			(1, 1, 2, 'V'),
--																			(1, 2, 2, 'D'),
--																			(1, 4, 2, 'V'),
--																			(1, 5, 2, 'D'),
--																			(1, 7, 2, 'V'),
--																			(1, 8, 2, 'D'),
--																			(1, 10, 2, 'V'),
--																			(3, 11, 5, 'D'),
--																			(3, 12, 5, 'V'),
--																			(3, 13, 5, 'D'),
--																			(3, 14, 5, 'V'),
--																			(3, 15, 5, 'D'),
--																			(5, 26, 1, 'V'),
--																			(5, 27, 1, 'D'),
--																			(5, 28, 1, 'V'),
--																			(5, 29, 1, 'D'),
--																			(5, 30, 1, 'V'),
--																			(5, 31, 1, 'D');

select * from Ingresso;
-------------------------------------------------------------------------------------------------------------
--1) Liste os dados referentes aos campos: Nome do Título, Hora de Inicio e Término da Sessão e a Sala.

select  Titulo.Nome			as 'Titulo',
		Sessao.HoraInicio	as 'Ínicio da Sessão',
		Sessao.HoraTermino	as 'Termino da Sessão',
		Sala.Nome			as 'Sala',
		Ingresso.Id_Sessao

from	Ingresso
join	Sessao	on	Sessao.Id_Sessao	=	Ingresso.Id_Sessao
join	Titulo	on	Titulo.Id_Titulo	=	Ingresso.Id_Titulo
join	Assento on	Assento.Id_Assento	=	Ingresso.Id_Assento
Join	Sala	on	Sala.Id_Sala		=	Assento.Id_Sala		order by	Titulo.Nome, Sessao.HoraInicio;
-------------------------------------------------------------------------------------------------------------
-- 2) Liste os dados referentes aos campos: Nome do Título, NomeOriginal do Título, Ano de Produção, Distribuidora e Gênero.

select	Titulo.Nome			as 'Titulo',
		Titulo.NomeOriginal as 'Titulo Original',
		Titulo.AnoProducao	as 'Ano de Produção',
		Distribuidora.Nome	as 'Produtora',
		Genero.Descricao	as 'Gênero'

From	Titulo
join	Distribuidora	on	Distribuidora.Id_Distribuidora	=	Titulo.Id_Distribuidora
join	Genero			on	Genero.Id_Genero					=	Titulo.Id_Genero	order by	Genero.Descricao;
---------------------------------------------------------------------------------------------------------------
-- 3) Liste os dados referentes aos campos: Nome da Sala e Quantidade de Assentos.

select	Sala.Nome as 'Sala',
		COUNT (*) as 'Qtd. de Assentos'

from	Sala
join	Assento on Assento.Id_Sala = Sala.Id_Sala	group by Sala.Nome;
---------------------------------------------------------------------------------------------------------------
--4) Liste os dados referentes aos campos: Nome da Sala e Quantidade de Assentos da menor sala.

select top	1 Sala.Nome as 'Sala',
			COUNT (*)	as 'Qtd. de Assentos'

from		Sala
join		Assento on Assento.Id_Sala = Sala.Id_Sala	group by	Sala.Nome	order by	'Qtd. de Assentos';
---------------------------------------------------------------------------------------------------------------
--5) Liste os dados referentes aos campos: Nome da Sala e Quantidade de Assentos Disponíveis.

select		Sala.Nome as 'Sala',
			COUNT (*) as 'Qtd. de Assentos Disponiveis'

from		Sala
join		Assento on Assento.Id_Sala = Sala.Id_Sala 
where		Assento.Situacao = 'D'	group by	Sala.Nome;
---------------------------------------------------------------------------------------------------------------
--6) Liste os dados referentes aos campos: Nome da Sala e Quantidade de Assentos Indisponíveis.

select		Sala.Nome as 'Sala',
			COUNT (*) as 'Qtd. de Assentos Indisponiveis'

from		Sala
join		Assento	on Assento.Id_Sala = Sala.Id_Sala 
where		Assento.Situacao = 'I'	group by	Sala.Nome;
---------------------------------------------------------------------------------------------------------------
--7) Liste os dados referentes aos campos: Nome da Sala, Início e Término da Sessão onde será exibido o filme Contra o Mundo.

Select distinct Titulo.Nome		as 'Titulo',
				Sala.Nome		as 'Sala',
				Sessao.HoraInicio	as 'Inicio da Sessão',
				Sessao.HoraTermino	as 'Fim da Sessão'
	

from	Ingresso
join	Assento on	Assento.Id_Assento	= Ingresso.Id_Assento
join	Sessao	on	Sessao.Id_Sessao	= Ingresso.Id_Sessao
join	Sala	on	Sala.Id_Sala		= Assento.Id_Sala
Join	Titulo	on	Titulo.Id_Titulo	= Ingresso.Id_Titulo
where  Titulo.Nome = 'Contra o Mundo';
---------------------------------------------------------------------------------------------------------------
--8) Liste os dados referentes aos campos: Descrição do Gênero e a quantidade de títulos cadastrados por gênero.

select	Genero.Descricao,
		count (*) as 'Qtd. de Titulos'

from	Genero
join	Titulo on Titulo.Id_Genero = Genero.Id_Genero	group by Genero.Descricao;
---------------------------------------------------------------------------------------------------------------
--9) Liste os dados referentes aos campos: Nome da Distribuidora e a quantidade de títulos cadastrados por distribuidora.

select	Distribuidora.Nome	as 'Produtora',
		COUNT (*)			as 'Qtd. de Titulos'

from	Distribuidora
join	Titulo	on	Titulo.Id_Distribuidora = Distribuidora.Id_Distribuidora	group by Distribuidora.Nome;
---------------------------------------------------------------------------------------------------------------
--10) Liste os dados referentes aos campos: Id do Ingresso, Nome do Título, Início da Sessão, Cadeira e Sala. Apenas dos ingressos vendidos (situação do ingresso = 'V').

select	Ingresso.Id_Ingresso	as 'Ingresso',
		Titulo.Nome				as 'Titulo',
		Sessao.HoraInicio		as 'Inicio da Sessão',
		Assento.Cadeira			as 'Cadeira',
		Sala.Nome				as 'Sala'

from	Ingresso
join	Titulo	on	Titulo.Id_Titulo	=	Ingresso.Id_Titulo
join	Sessao	on	Sessao.Id_Sessao	=	Ingresso.Id_Sessao
Join	Assento	on	Assento.Id_Assento	=	Ingresso.Id_Assento
join	Sala	on	Sala.Id_Sala		=	Assento.Id_Sala
where	Ingresso.Situacao = 'V';
