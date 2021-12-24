const req = require("express/lib/request");
const res = require("express/lib/response");

const controlador = {};

controlador.login = (req,res)=>{
    res.render('moduloAdministrador');
}

controlador.ingresarEmpleado = (req,res)=>{
    const dpi = req.body.dpi;
    const nombre = req.body.nombre;
    const apellido = req.body.apellido;
    const email = req.body.email;
    const telefono = req.body.telefono;
    console.log('***EMPLEADO***');
    console.log(dpi);
    console.log(nombre);
    console.log(apellido);
    console.log(email);
    console.log(telefono);
    console.log('***INGRESADO***');
    res.redirect('/moduloAdmin');
}

controlador.asignarUsuario = (req,res)=>{

    const usuario = req.body.usuario;
    const password = req.body.password;
    const tipo = req.body.tipo;
    const dpi = req.body.dpi;

    console.log('Usuario: '+usuario);
    console.log('Password: '+password);
    console.log('Tipo: '+tipo);
    console.log('DPI: '+dpi);
    res.redirect('/formUsuario');
}

controlador.ingresarMedico = (req,res)=>{
    const id = req.body.id;
    const nombre = req.body.nombre;
    const apellido = req.body.apellido;
    const telefono = req.body.telefono;

    console.log('***MEDICO***');
    console.log('ID: '+id);
    console.log('Nombre: '+nombre);
    console.log('Apellido: '+apellido);
    console.log('Telefono: '+telefono);
    console.log('**MEDICO INGRESADO***');
    res.redirect('/moduloAdmin');
}

controlador.accesarEmpleado = (req,res)=>{
    res.render('ingresarEmpleado');
}

controlador.accesarUsuario = (req,res)=>{
    res.render('asignarUsuario');
}

controlador.accesarMedico = (req,res)=>{
    res.render('ingresarMedico');
}

controlador.accesarEmpleados = (req, res)=>{
    res.render('empleados');
}

controlador.accesarMedicos = (req, res)=>{
    res.render('medicos');
}
module.exports = controlador;