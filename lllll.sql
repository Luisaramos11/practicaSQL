INSERT INTO BIBLIOTECA (Nombre,Direccion)
values ("Luisa Fernanda","#12-34 Barrio Centro");



INSERT INTO LIBRO(Nombre,Genero_lit)
values ("Diario Del Fin Del Mundo","Suspenso"), 
("El Dairio De Anna Frank", "Historia"),
("Cien Años De Soledad", "Ficcion");

INSERT INTO EDITORIAL (Nombre,Email,Pais)
values ("Al viento","alviento508@gmail.com","Colombia"), 
("Planeta", "Planeta523@gmail.com", "España"),
("Librito", "Libritote@gmail.com", "Mexico");

INSERT INTO AUTOR (Nombre,Apellido)
values ("Mario", "Mendoza"),
("Ana","Frank"),
("Gabriel","Garcia");

INSERT INTO ROLES (Nom_Rol)
values ("Administrador"),
("Cliente");

INSERT INTO USUARIO (id_Usuario, Nombre, Apellido, Num_Tel, Direccion)
values ("1023366187","Luisa", "Ramos", "3142039952", "Transversal 20D#61-40Sur"),
("109382414","Laura", "Ortiz", "3143358857", "calle 40 #71-32");

INSERT INTO PRESTAMOS (Fecha_Prest,Fecha_Dev)
values ("10/03/2025,"15/03/2025"),
("11/03/2025", "13/03/2025"),
("12/08/2025","20/09/2025");








