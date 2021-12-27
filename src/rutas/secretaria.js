const express = require('express');
const controlador = require('../controladores/ControladorSecretaria');
const ruta = express.Router();

ruta.get('/', controlador.login);
ruta.get('/moduloSecretaria',controlador.accederModulo);
ruta.post('/accesar',controlador.accesar);
ruta.get('/formPaciente',controlador.accesarPaciente);
ruta.post('/agregarPaciente',controlador.ingresarPaciente);
ruta.get('/vistaPacientes',controlador.accesarPacientes);
ruta.get('/formExamen',controlador.accesarExamen);
ruta.post('/agregarExamen',controlador.ingresarExamen);
ruta.post('/agregarDetalleExamen',controlador.ingresarDetalleExamen);
ruta.get('/formPago',controlador.accesarPago);
ruta.post('/agregarPago',controlador.ingresarPago);
ruta.get('/formConsultaDetalleExamen',controlador.accesarConsultaDetalleExamen);
ruta.post('/consultarExamen',controlador.consultarExamen);
module.exports = ruta;
