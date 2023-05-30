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
(null, 'VCT Americas', 'Americas');

create table Equipes(
idEquipes int primary key auto_increment,
NomeEquipe varchar(45),
Vitorias int,
Derrotas int,
fkTorneio int,
constraint fkTorneioEquipes foreign key (fkTorneio) references Torneios(idTorneios)
);
insert into Equipes values
(null, 'LOUD', '8','1','1');
insert into Equipes values
(null, 'FURIA', '4','5','1');
insert into Equipes values
(null, 'MIBR', '3','6','1');
insert into Equipes values
(null, 'NRG', '6','3','1');
insert into Equipes values
(null, 'SEN', '4','5','1');
insert into Equipes values
(null, 'C9', '8','1','1');
insert into Equipes values
(null, 'EG', '4','5','1');
insert into Equipes values
(null, '100T', '4','5','1');
insert into Equipes values
(null, 'Levi', '4','5','1');
insert into Equipes values
(null, 'KRU', '0','9','1');



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
