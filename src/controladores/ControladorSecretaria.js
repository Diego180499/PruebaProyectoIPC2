const req = require("express/lib/request");
const res = require("express/lib/response");

const controlador = {};

controlador.login = (req, res) => {
    res.render('index');
}
/*ESTE ACCESAR ES PARA VALIDAR LOS TIPOS DE USUARIOS...
NO ES UNA ACCION PROPIA DE LA SECRETARIA PERO LO AGREGUE EN ESTE CONTROLADOR...*/ 
controlador.accesar = (req, res) => {
    const usuario = req.body.usuario;
    const password = req.body.password;
    console.log('Usuario: ' + usuario);
    console.log('Password: ' + password);
    if (usuario === 'Admin') {
        res.render('moduloAdministrador');
    } else if (usuario === 'Lab') {
        res.render('moduloLaboratorista');
    } else if (usuario === 'Secre') {
        res.render('moduloSecretaria');
    }else{
        console.log('Ingreso mal el usuario');
        res.render('index');
    }
};
/*FIN-------------*/

controlador.ingresarPaciente = (req,res)=>{
    const cui = req.body.cui;
    const nombre = req.body.nombre;
    const apellido = req.body.apellido;
    const sexo = req.body.sexo;
    const fecha = req.body.fecha;

    console.log('***NUEVO PACIENTE***');
    console.log('CUI: '+cui);
    console.log('Nombre: '+nombre);
    console.log('Apellido: '+apellido);
    console.log('Sexo: '+sexo);
    console.log('Fecha Nacimineto: '+fecha);
    console.log('***INGRESADO***');
    res.redirect('/moduloSecretaria');
}

controlador.accederModulo = (req, res) => {
    res.render('moduloSecretaria');
}

controlador.accesarPaciente = (req,res)=>{
    res.render('ingresarPaciente');
}

controlador.accesarPacientes = (req,res)=>{
    res.render('pacientes');
}

module.exports = controlador;