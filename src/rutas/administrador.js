const express = require('express');
const controlador = require('../controladores/ControladorAdministrador');
const ruta = express.Router();

ruta.get('/moduloAdmin', controlador.login);
ruta.post('/agregarEmpleado',controlador.ingresarEmpleado);
ruta.get('/formEmpleado',controlador.accesarEmpleado);
ruta.get('/formUsuario', controlador.accesarUsuario);
ruta.post('/asignarUsuario',controlador.asignarUsuario);
ruta.get('/formMedico', controlador.accesarMedico);
ruta.post('/agregarMedico',controlador.ingresarMedico);
ruta.get('/vistaEmpleados',controlador.accesarEmpleados);
ruta.get('/vistaMedicos',controlador.accesarMedicos);
module.exports = ruta;