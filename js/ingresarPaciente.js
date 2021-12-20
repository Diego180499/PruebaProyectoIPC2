let cui = document.getElementById('cui');
let nombre = document.getElementById('nombre');
let apellido = document.getElementById('apellido');
let sexo = document.getElementById('sexo');
let fecha = document.getElementById('fecha');
let boton = document.getElementById('boton');

console.log('***REQUISITOS***');
console.log('El CUI no puede quedar vacío');

boton.addEventListener('click', ()=>{

    if(cui.value === ''){
        alert('El CUI es obligatorio');
        return;
    }

    console.log('***PACIENTE INGRESADO***');
    console.log('CUI: '+cui.value);
    console.log('Nombre: '+nombre.value);
    console.log('Apellido: '+apellido.value);
    console.log('Sexo: '+sexo.value);
    console.log('Fecha Nacimiento: '+fecha.value);
});