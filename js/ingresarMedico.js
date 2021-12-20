let id = document.getElementById('id');
let nombre = document.getElementById('nombre');
let apellido = document.getElementById('apellido');
let telefono = document.getElementById('telefono');
let boton = document.getElementById('boton');


console.log('-->REQUISITOS<--');
console.log('Para agregar un médico asociado al Laboratorio\n deberá de ingresar el ID que lo representa como médico');
boton.addEventListener('click',()=>{
    if(id.value === ''){
        alert('El ID es obligatorio');
        return;
    }
    console.log('***NUEVO MÉDICO***');
    console.log('ID: '+id.value);
    console.log('Nombre: '+nombre.value);
    console.log('Apellido: '+apellido.value);
    console.log('Telefono: '+telefono.value);
});
