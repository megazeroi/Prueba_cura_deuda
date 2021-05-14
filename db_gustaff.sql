/*
	Developer: megazeroi
    Date: 12/May/2021
	Database: Gustavo_envios
*/
-- Creando y usando nueva base de datos
CREATE DATABASE IF NOT EXISTS Gustavo_envios;
-- Usar base de datos creada
USE Gustavo_envios;
-- Líneas de código solamente usadas para borrar las tablas previamente creadas pero no son necesarias para la prueba final
DROP TABLE IF EXISTS Estado;
DROP TABLE IF EXISTS Municipio;
DROP TABLE IF EXISTS Colonia;
-- Creando nueva tabla SEPOMEX
CREATE TABLE IF NOT EXISTS SEPOMEX (d_codigo int PRIMARY KEY NOT NULL, d_asenta varchar(100) NOT NULL, d_tipo_asenta varchar(19) NOT NULL, D_mnpio varchar(100) NOT NULL, d_estado varchar(31) NOT NULL, d_ciudad varchar(60) NOT NULL, d_CP int NOT NULL, c_estado int NOT NULL, c_oficina int NOT NULL, c_CP varchar(1) DEFAULT NULL, c_tipo_asenta int NOT NULL, c_mnpio int NOT NULL, id_asenta_cpcons int NOT NULL, d_zona varchar(6) NOT NULL, c_cve_ciudad int NOT NULL, KEY sepo_idx1 (d_codigo), KEY sepo_idx2 (D_mnpio), KEY sepo_idx3 (d_estado), KEY sepo_idx4 (d_asenta)) ENGINE=INNODB;
-- Eliminar tabla existente y creando nueva tabla Estado
CREATE TABLE IF NOT EXISTS Estado (d_codigo int NOT NULL, d_estado varchar(31) NOT NULL, b_esta date, FOREIGN KEY (d_codigo) REFERENCES SEPOMEX (d_codigo), FOREIGN KEY (d_estado) REFERENCES SEPOMEX (d_estado), PRIMARY KEY(d_codigo, d_estado)) ENGINE=INNODB;
-- Creando nueva tabla Municipio
CREATE TABLE IF NOT EXISTS Municipio (d_codigo int NOT NULL, D_mnpio varchar(100) NOT NULL, b_muni date, FOREIGN KEY (d_codigo) REFERENCES SEPOMEX (d_codigo), FOREIGN KEY (D_mnpio) REFERENCES SEPOMEX (D_mnpio), PRIMARY KEY(d_codigo, D_mnpio)) ENGINE=INNODB;
-- Creando nueva tabla Colonia
CREATE TABLE IF NOT EXISTS Colonia (d_codigo int NOT NULL, d_asenta varchar(100) NOT NULL, b_colo date, FOREIGN KEY(d_codigo) REFERENCES SEPOMEX(d_codigo), FOREIGN KEY(d_asenta) REFERENCES SEPOMEX(d_asenta), PRIMARY KEY(d_codigo, d_asenta)) ENGINE=INNODB;
/*
	Developer: megazeroi
    Date: 12/May/2021
	Database: Gustavo_users
*/
-- Creando y usando nueva base de datos
-- CREATE DATABASE IF NOT EXISTS Gustavo_users;
-- Usar base de datos creada
-- USE Gustavo_users;
-- Líneas de código solamente usadas para borrar las tablas previamente creadas pero no son necesarias para la prueba
DROP TABLE IF EXISTS USERS;
-- Creando nueva tabla de Usuarios
CREATE TABLE IF NOT EXISTS USERS ( d_user varchar(12) NOT NULL, d_pass varchar(20) NOT NULL, d_name varchar(60) NOT NULL, d_last varchar(60) NOT NULL, d_phone varchar(20) NOT NULL, d_mail varchar(60) NOT NULL);
-- Añadiendo datos a tabla Usuarios
INSERT INTO USERS ( d_user, d_pass, d_name, d_last, d_phone, d_mail) VALUES ('ENV_G0001', '123456', 'Gustavo Antonio', 'Pérez García', '5512345678', 'gperezg01@enviosg.com.mx'),
('ENV_G0002', '123456', 'Alexis Alee', 'López Ramírez', '5512345670', 'alopezr01@enviosg.com.mx'),
('ENV_G0003', '123456', 'María Fernanda', 'Moreno Rubalcava', '5512345677', 'mmorenor01@enviosg.com.mx'),
('ENV_G0004', '123456', 'Javier', 'Barrera Barcenas', '5512345676', 'jbarrerab01@enviosg.com.mx'),
('ENV_G0005', '123456', 'Pamela Itzel', 'Fernández Acosta', '5512345675', 'pfernandeza01@enviosg.com.mx'),
('ENV_G0006', '123456', 'Ana Laura de los Angeles', 'Mendoza García Nava de León', '5512345674', 'amendozag01@enviosg.com.mx');