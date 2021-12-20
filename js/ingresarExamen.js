let cui = document.getElementById('cui');
let fecha = document.getElementById('fecha');
let medico = document.getElementById('medico');
let tipo = document.getElementById('tipo');
let boton = document.getElementById('boton');

console.log('***REQUISITOS***');
console.log('El CUI no debe quedar vacío\nEl tipo de examen no debe quedar vacío');
console.log('Hay 3 tipos de Examen, se ingresan con su número:');
console.log('1: Sangre\n2: Orina\n3: Heces\n');

boton.addEventListener('click',()=>{

    if(cui.value === ''){
        alert('El CUI es obligatorio');
        return;
    }

    if(!(tipo.value === '1') && !(tipo.value === '2') && !(tipo.value === '3')){
        alert('No existe este tipo de examen');
        return;
    }

    console.log('***NUEVO EXAMEN***');
    console.log('CUI Paciente: '+cui.value);
    console.log('Fecha de Examen: '+fecha.value);
    console.log('Médico de Referencia: '+medico.value);
    console.log('Tipo de Exámen: '+tipo.value);


});