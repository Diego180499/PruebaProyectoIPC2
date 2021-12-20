CREATE DATABASE Laboratorio;
USE Laboratorio;

CREATE TABLE paciente(
`cui` INT PRIMARY KEY,
`nombre` VARCHAR(45) NOT NULL,
`apellido` VARCHAR(45) NOT NULL,
`sexo` VARCHAR(25),
`fecha_nacimiento` DATE NOT NULL 
);


CREATE TABLE empleado(
`dpi` INT PRIMARY KEY,
`nombre` VARCHAR(45),
`apellido` VARCHAR(45),
`telefono` INT,
`correo` VARCHAR(100),
`jornada` VARCHAR(45)
);

CREATE TABLE usuario(
`usuario` VARCHAR(100) PRIMARY KEY,
`tipo_usuario` INT NOT NULL,
`password` VARCHAR(45) NOT NULL,
dpiEmpleado INT NOT NULL,
CONSTRAINT fk_empleado FOREIGN KEY (dpiEmpleado) REFERENCES empleado(dpi)
);
/*-----------------------------------------------------*/

CREATE TABLE medico(
`id_medico` INT PRIMARY KEY,
`nombre` VARCHAR(45) NOT NULL,
`apellido` VARCHAR(45) NOT NULL,
`telefono` INT,
`correo` VARCHAR(100)
);

CREATE TABLE tipoExamen(
`id_tipoExamen` INT PRIMARY KEY,
`nombre` VARCHAR(45) NOT NULL,
`precio` DOUBLE NOT NULL
);

CREATE TABLE examen(
`id_examen`  INT PRIMARY KEY AUTO_INCREMENT,
`fecha_examen` DATE NOT NULL,
`total` DOUBLE NOT NULL,
`cui_paciente` INT NOT NULL,
`id_medico` INT NOT NULL,
CONSTRAINT fk_paciente FOREIGN KEY (cui_paciente) REFERENCES paciente(cui),
CONSTRAINT fk_medico FOREIGN KEY (id_medico) REFERENCES medico(id_medico)
);


CREATE TABLE detalle_examen(
`id_detalleExamen` INT PRIMARY KEY AUTO_INCREMENT,
`id_examen` INT NOT NULL,
`id_tipoExamen` INT NOT NULL,
CONSTRAINT fk_examen FOREIGN KEY (id_examen) REFERENCES examen(id_examen),
CONSTRAINT fk_tipoExamen FOREIGN KEY (id_tipoExamen) REFERENCES tipoExamen(id_tipoExamen)
);
/*---------------------------------------------------*/





