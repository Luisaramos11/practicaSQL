drop database if exists biblioteca;
CREATE DATABASE biblioteca;
USE biblioteca;



CREATE TABLE BIBLIOTECA(
id_Biblioteca int PRIMARY KEY auto_increment,
Nombre varchar (50),
Direccion varchar (50),
ID_LIBRO int);

CREATE TABLE  LIBRO(
id_Libro int PRIMARY KEY auto_increment,
Nombre varchar (50),
Genero_lit varchar (50),
ID_EDITORIAL int,
ID_BIBLIOTECA int,
ID_AUTOR int);

CREATE TABLE EDITORIAL(
id_Editorial int PRIMARY KEY auto_increment,
Nombre varchar (50),
Email varchar (50),
Pais varchar (50),
ID_LIBRO int );

CREATE TABLE AUTOR(
id_Autor int PRIMARY KEY auto_increment,
Nombre varchar (50),
Apellido varchar (50),
ID_LIBRO int);

CREATE TABLE ROLES(
id_Roles int PRIMARY KEY auto_increment,
Nom_rol varchar (50),
ID_USUARIO int);

CREATE TABLE USUARIO(
id_Usuario int PRIMARY KEY auto_increment,
Nombre varchar (50),
Apellido varchar (50),
Num_tel int,
Direccion varchar (50),
ID_ROLES int,
ID_PRESTAMOS int);

CREATE TABLE PRESTAMOS(
id_Prestamo int PRIMARY KEY auto_increment,
Fecha_prest date,
Fecha_dev date,
ID_LIBRO int,
ID_USUARIO int);

ALTER TABLE LIBRO
ADD FOREIGN KEY (ID_EDITORIAL) REFERENCES EDITORIAL (id_Editorial),
ADD FOREIGN KEY (ID_BIBLIOTECA) REFERENCES BIBLIOTECA (id_Biblioteca),
ADD FOREIGN KEY (ID_AUTOR) REFERENCES AUTOR (id_Autor);

ALTER TABLE BIBLIOTECA 
ADD FOREIGN KEY (ID_LIBRO) REFERENCES LIBRO (id_Libro);

ALTER TABLE EDITORIAL
ADD FOREIGN KEY (ID_LIBRO) REFERENCES LIBRO (id_Libro);

ALTER TABLE AUTOR
ADD FOREIGN KEY (ID_LIBRO) REFERENCES LIBRO (id_Libro);


ALTER TABLE USUARIO
ADD FOREIGN KEY (ID_ROLES) REFERENCES ROLES (id_Roles);


ALTER TABLE PRESTAMOS
ADD FOREIGN KEY (ID_USUARIO) REFERENCES USUARIO (id_Usuario),
ADD FOREIGN KEY (ID_LIBRO) REFERENCES LIBRO (id_Libro); 
