create database echange;
use echange;
create sequence seqUtilisateur start with 1 increment by 1;

create table utilisateur
(
    idUtilisateur int auto_increment primary key,
    email varchar(30) unique not null,
    mdp varchar(20) not null,
    nom varchar(100)  not null,
    identification int  not null
);

create or replace view client as(select * from utilisateur where identification = 0);
create or replace view adminn as(select * from utilisateur where identification = 1);

create table objet
(
    idObject int auto_increment primary key,
    nom varchar(100) not null,
    idUtilisateur int,
    foreign key(idUtilisateur) references(utilisateur) idUtilisateur = idUtilisateur,
);

create table img
(
    idImg int auto_increment primary key,
    nom varchar(20) not null
);

create table detaileObjet
(
    idDetaileObjet int auto_increment primary key,
    idObjet int,
    foreign key(idObjet) references(Objet) idObjet = idObjet,
    prixEstimation double precision not null,
    idImg varchar(20) not null,
    Constraint fk_Img foreign key(idImg) references(Img) idImg = idImg,
    descri text not null;
);

