DROP DATABASE IF EXISTS palestra;
create database palestra;
USE palestra;
create table CLIENTE (id_cliente int primary key auto_increment,nome varchar(50), cognome varchar(50), mail varchar(50), telefono varchar(50), via varchar(50), città varchar(50),codice_fiscale varchar(50), cap varchar (5), data_nascita date);
create table ISTRUTTORE (id_istruttore int primary key auto_increment, nome varchar(50), cognome varchar(50), specializzazione varchar(50));
create table SALA (id_sala int primary key auto_increment,nome_sala varchar(50), capienza int, specializzazione varchar (50));
create table CORSO (id_corso int primary key auto_increment, quota_mensile decimal (10,2), id_istruttore int, id_sala int, nome_corso varchar(50),
foreign key (id_istruttore) references ISTRUTTORE (id_istruttore),
foreign key (id_sala) references SALA (id_sala));
create table PAGAMENTI (id_pagamenti int primary key auto_increment, importo decimal (10,2), data_pagamento date, id_cliente int,
foreign key (id_cliente) references	CLIENTE (id_cliente));
create table ISCRIZIONE (id_iscrizione int primary key auto_increment, data_iscrizione date, id_cliente int, id_corso int,
foreign key (id_cliente) references	CLIENTE (id_cliente), foreign key (id_corso) references	CORSO (id_corso));
insert into ISTRUTTORE (nome,cognome,specializzazione) values ('Mario', 'Rossi','Yoga'), ('Giovanna','Bianchi','Pilates'), ('Antonio', 'Esposito', 'Crossfit'), ('Enzo','Rossi', 'Boxe');
insert into SALA (nome_sala, capienza, specializzazione) values ('Blu', '20', 'Yoga'), ('Bianca','30', 'Pilates'), ('Verde','15','Crossfit'), ('Gialla','5','Boxe');
insert into CORSO (nome_corso,quota_mensile,id_istruttore,id_sala) values ('Yoga',50,1,1), ('Pilates', 40,2,'2'), ('Crossfit', 60,3,3), ('Boxe', 100,4,4);
insert into CLIENTE (nome,cognome,mail,telefono,via,città,codice_fiscale,cap,data_nascita) values ('Luca','Ferrari','luca.ferrari@gmail.com',32012345678,'Via Roma 10', 'Roma', 'FRRLCU85M10F205Z',20100, '1985-3-23'),
('Anna','Russo','anna.russo@yahoo.com',3317654321, 'Via Garibaldi 5', 'Napoli', 'RSSNNA90A41F839X', 80100,'1990-01-15'),
('Marco', 'Esposito', 'marco.esposito@gmail.com', 3491112233, 'Via Dante 22', 'Roma', 'SPSMRC88T20H501Z', 00100, '1988-12-20'),
('Sofia', 'Bianco', 'sofia.bianco@outlook.com', 3664445566, 'Via Manzoni 8', 'Torino', 'BNCSFO92D48L219X', 10110, '1992-04-08'),
('Giorgio','Conti', 'giorgio.conti@mail.it', 3887778899, 'Via Leopardi 3', 'Bologna', 'CNTGRG87R10A944Z' , 40100, '1987-10-10');
insert into ISCRIZIONE (id_cliente,id_corso,data_iscrizione) 
values (1,1,'2024-01-10'), (3,2,'2024-01-15'), (4,3,'2024-02-01'), (5,1,'2024-02-10'), (5,4,'2024-03-05');
insert into PAGAMENTI (id_cliente,importo,data_pagamento) values (1,50.50, '2024-01-10'), (3,40,'2024-01-15'), (4,60,'2024-02-01'), (5,50,'2024-02-10'), (2,100,'2024-03-05');
SELECT * FROM PAGAMENTI;











