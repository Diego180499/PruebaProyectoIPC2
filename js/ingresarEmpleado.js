let dpi = document.getElementById('dpi');
let nombre = document.getElementById('nombre');
let apellido = document.getElementById('apellido');
let telefono = document.getElementById('telefono');
let correo = document.getElementById('correo');
let boton = document.getElementById('boton');

console.log('-->REQUISITOS<--');
console.log('Para ingresar un nuevo empleado, es necesario que su DPI sea ingresado\nEl DPI no puede quedar vacio');

boton.addEventListener('click',()=>{
    if(dpi.value === ''){
        alert('El DPI es obligatorio');
        return;
    }
    console.log('***NUEVO EMPLEADO***');
    console.log('DPI:'+dpi.value);
    console.log('Nombre:'+nombre.value);
    console.log('Apellido:'+apellido.value);
    console.log('Telefono:'+telefono.value);
    console.log('Correo:'+correo.value);


});