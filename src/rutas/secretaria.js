const express = require('express');
const controlador = require('../controladores/ControladorSecretaria');
const ruta = express.Router();

ruta.get('/', controlador.login);
ruta.get('/moduloSecretaria',controlador.accederModulo);
ruta.post('/accesar',controlador.accesar);
ruta.get('/formPaciente',controlador.accesarPaciente);
ruta.post('/agregarPaciente',controlador.ingresarPaciente);
ruta.get('/vistaPacientes',controlador.accesarPacientes);
module.exports = ruta;
