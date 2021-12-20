let dpi = document.getElementById('dpi');
let nombre = document.getElementById('nombre');
let apellido = document.getElementById('apellido');
let telefono = document.getElementById('telefono');
let boton = document.getElementById('boton');

console.log('***REQUISITOS***');
console.log('El DPI no puede quedar vacío');
boton.addEventListener('click',()=>{
    if(dpi.value === ''){
        alert('El DPI es obligatorio');
        return;
    }

    console.log('-->USUARIO MODIFICADO<--');
    console.log('DPI: '+dpi.value);
    console.log('Nombre: '+nombre.value);
    console.log('Apellido: '+apellido.value);
    console.log('Telefono: '+telefono.value);
});


