drop database if exists ValorantStats;
create database if not exists ValorantStats;
use ValorantStats;


CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(150),
	email VARCHAR(150),
	senha VARCHAR(150),
	cpf CHAR(11)
);

create table ContaRiot(
idContaRiot int,
Nickname varchar(40),
Kills int,
Deaths int,
Assists int,
fkUsuario int,
constraint fkContaUsuario foreign key (fkUsuario) references usuario(idUsuario),
constraint PkUsuarioConta primary key (idContaRiot, fkUsuario)
);

create table Torneios(
idTorneios int primary key auto_increment,
NomeTorneio varchar(150),
Regiao varchar(45)
);

insert into Torneios values
(null, 'VCT Americas', 'Americas'),
(null, 'VCT EMEA', 'Europa'),
(null, 'VCT PACIFIC', 'Asia/Oceania');


create table Equipes(
idEquipes int primary key auto_increment,
NomeEquipe varchar(45),
Vitorias int,
Derrotas int,
fkTorneio int,
constraint fkTorneioEquipes foreign key (fkTorneio) references Torneios(idTorneios)
);
insert into Equipes values
(null, 'LOUD', '8','1','1'),
(null, 'FURIA', '4','5','1'),
(null, 'MIBR', '3','6','1'),
(null, 'NRG', '6','3','1'),
(null, 'SEN', '4','5','1'),
(null, 'C9', '8','1','1'),
(null, 'EG', '4','5','1'),
(null, '100T', '4','5','1'),
(null, 'Levi', '4','5','1'),
(null, 'KRU', '0','9','1');


/* EUROPA   */
insert into Equipes values
(null, 'FNC', '9','0','2'),
(null, 'NAVI','7','2','2'),
(null, 'LIQUID','6','3','2'),
(null, 'GIA','5','4','2'),
(null, 'FUT','5','4','2'),
(null, 'VIT', '4','5','2'),
(null, 'BBL','3','6','2'),
(null, 'HER','2','7','2'),
(null, 'KOI','2','7','2'),
(null, 'KAR','2','7','2');

insert into Equipes values
(null, 'DRX', '8','1','3'),
(null, 'PRX','7','2','3'),
(null, 'T1','6','3','3'),
(null, 'ZETA','5','4','3'),
(null, 'TS','5','4','3'),
(null, 'GENG','4','5','3'),
(null, 'RRQ','4','5','3'),
(null, 'GE','3','6','3'),
(null, 'TALON','3','6','3'),
(null, 'DFM','0','9','3');


select*from Equipes where NomeEquipe = 'LOUD';

create table Jogadores(
idJogadores int,
fkEquipes int,
NickJogadores varchar (50),
Kills int,
Deaths int,
Assists int,
constraint fkEquipesJogadores foreign key (fkEquipes) references Equipes(idEquipes),
constraint idJogadoresEquipes primary key (idJogadores, fkEquipes)
);

select * from usuario;
