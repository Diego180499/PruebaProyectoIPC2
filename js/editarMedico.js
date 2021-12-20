let id = document.getElementById('id');
let nombre = document.getElementById('nombre');
let apellido = document.getElementById('apellido');
let telefono = document.getElementById('telefono');
let boton = document.getElementById('boton');

console.log('***REQUISITOS***');
console.log('El id no puede quedar vacío');
boton.addEventListener('click',()=>{
    if(id.value === ''){
        alert('El id es obligatorio');
        return;
    }

    console.log('-->MEDICO MODIFICADO<--');
    console.log('id: '+id.value);
    console.log('Nombre: '+nombre.value);
    console.log('Apellido: '+apellido.value);
    console.log('Telefono: '+telefono.value);
});
