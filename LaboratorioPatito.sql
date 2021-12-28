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
    
CREATE USER 'administrador2021'@'localhost' IDENTIFIED BY 'adminIPC2-*';
GRANT ALL PRIVILEGES ON * . * TO 'administrador2021'@'localhost';
FLUSH PRIVILEGES;
    
    /*PRUEBAS CON LA BASE DE DATOS*/
   
    /*------------------------------------------------*/
    use laboratorio_patito;
    