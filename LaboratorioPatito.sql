CREATE DATABASE LABORATORIO_PATITO;

USE LABORATORIO_PATITO;

CREATE TABLE Paciente (
	cui INT NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL,
    sexo VARCHAR(45) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    CONSTRAINT PK_paciente PRIMARY KEY (cui)
    );

CREATE TABLE Medico (
	id_medico INT NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL,
    telefono INT NOT NULL,
    correo VARCHAR(45) NOT NULL,
    CONSTRAINT PK_medico PRIMARY KEY (id_medico)
    );    
    
CREATE TABLE Examen (
	id_examen INT NOT NULL,
    fecha DATE NOT NULL,
    total DOUBLE NOT NULL,
    paciente_cui INT NOT NULL,
    id_medico INT NOT NULL,
    CONSTRAINT PK_examen PRIMARY KEY (id_examen),
	CONSTRAINT FK_paciente_cui FOREIGN KEY (paciente_cui) REFERENCES Paciente(cui),
	CONSTRAINT FK_medico_id_medico FOREIGN KEY (id_medico) REFERENCES Medico(id_medico)
    ); 
    
CREATE TABLE Tipo_Examen (
	id_tipo_examen INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    precio DOUBLE NOT NULL,
    CONSTRAINT PK_tipo_Examen PRIMARY KEY (id_tipo_examen)
    ); 
   
CREATE TABLE Detalle_Examen (
	id_detalle_examen INT NOT NULL auto_increment,
    id_tipo_examen INT NOT NULL,
    id_examen INT NOT NULL,
    CONSTRAINT PK_detalle_Examen PRIMARY KEY (id_detalle_examen),
    CONSTRAINT FK_tipo_examen_id FOREIGN KEY (id_tipo_examen) REFERENCES Tipo_Examen(id_tipo_examen),
	CONSTRAINT FK_examen_id FOREIGN KEY (id_examen) REFERENCES Examen(id_examen)
    ); 
    
CREATE TABLE Resultado (
	id_resultado INT NOT NULL,
    id_examen INT NOT NULL,
    CONSTRAINT PK_resultado PRIMARY KEY (id_resultado),
    CONSTRAINT FK_examen_id_resultado FOREIGN KEY (id_examen) REFERENCES Examen(id_examen)
    ); 
    
CREATE TABLE Campo (
	id_campo INT NOT NULL auto_increment,
    nombre VARCHAR(45) NOT NULL,
    id_tipo_examen INT NOT NULL,
    CONSTRAINT PK_campo PRIMARY KEY (id_campo),
    CONSTRAINT FK_tipo_examen_id_campo FOREIGN KEY (id_tipo_examen) REFERENCES Tipo_Examen(id_tipo_examen)
    );
  
CREATE TABLE Detalle_Resultado (
	id_detalle_resultado INT NOT NULL AUTO_INCREMENT,
    descripcion VARCHAR(45) NOT NULL,
    id_resultado INT NOT NULL,
    id_campo INT NOT NULL,
    CONSTRAINT PK_detalle_resultado PRIMARY KEY (id_detalle_resultado),
    CONSTRAINT FK_resultado_id FOREIGN KEY (id_resultado) REFERENCES Resultado(id_resultado),
    CONSTRAINT FK_campo_id FOREIGN KEY (id_campo) REFERENCES Campo(id_campo)
    );
    
CREATE TABLE Empleado (
	dpi INT NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL,
    telefono INT NOT NULL,
    correo VARCHAR(45) NOT NULL,
    CONSTRAINT PK_empleado PRIMARY KEY (dpi)
    );   
    
CREATE TABLE usuario (
	usuario VARCHAR(45) NOT NULL,
    tipo INT NOT NULL,
    password_ VARCHAR(45) NOT NULL,
    dpi_empleado INT NOT NULL,
    CONSTRAINT PK_usuario PRIMARY KEY (usuario),
    CONSTRAINT FK_empleado_dpi FOREIGN KEY (dpi_empleado) REFERENCES Empleado(dpi)
    );
    
    CREATE TABLE pago (
    id_pago INT PRIMARY KEY AUTO_INCREMENT,
    id_examen INT NOT NULL,
    tipo_pago VARCHAR (45),
    fecha DATE,
    total DOUBLE,
    CONSTRAINT FK_examen_pago FOREIGN KEY (id_examen) REFERENCES Examen(id_examen)
    );
    
    /*PRUEBAS CON LA BASE DE DATOS*/
    USE laboratorio_patito;
    SELECT * FROM detalle_examen WHERE id_examen = 1010;
    INSERT INTO examen(id_examen,paciente_cui,id_medico,fecha,total) VALUES (132,12345678,12341234,'2021/04/04',0.0);
    /*CONSULTAS*/
    SELECT campo.id_campo, campo.nombre as nombreCampo, tipo_examen.nombre as nombreTipoExamen 
    FROM detalle_examen 
    INNER JOIN tipo_examen on detalle_examen.id_tipo_examen = tipo_examen.id_tipo_examen
    INNER JOIN campo on campo.id_tipo_examen = tipo_examen.id_tipo_examen
    WHERE id_examen = 9
    ORDER BY tipo_examen.id_tipo_examen;
    /*------------------------------------------------*/
    UPDATE examen SET total = 20 WHERE id_examen = 1010;
    SELECT * FROM examen WHERE id_examen = 1010;
    SELECT * FROM tipo_examen;
    
    SELECT precio FROM tipo_examen WHERE id_tipo_examen = 1;
    SELECT * FROM examen WHERE id_examen = 12127;
    SELECT * FROM detalle_examen WHERE id_examen = 12127;
    SELECT * FROM examen WHERE id_examen = 12128;
		SELECT * FROM pago;
    SELECT * FROM detalle_resultado WHERE id_resultado = 333;
    SELECT * FROM detalle_resultado WHERE id_resultado = 1101;