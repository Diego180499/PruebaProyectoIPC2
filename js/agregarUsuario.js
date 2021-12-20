let usuario = document.getElementById('usuario');
let password = document.getElementById('password');
let tipo = document.getElementById('tipo');
let dpi = document.getElementById('dpi');
let boton = document.getElementById('boton');

console.log('-->REQUISITOS<--');
console.log('Hay 3 Tipos de Empleados:');
console.log('1: Administrador\n2: Secretaria\n3: Laboratorista');
console.log('***Deberá ingresar un tipo válido (1, 2 o 3)***');
console.log('***Deberá asignarle el usuario a un Empleado ya registrado en el Sistema***');
console.log('***EMPLEADOS YA REGISTRADOS (SIN USUARIO)***');
console.log('1.  dpi = 12345678\n2. dpi = 87654321');

boton.addEventListener('click', () => {

    if (usuario.value === '') {
        alert('El usuario es obligatorio');
        return;
    }

    if (password.value === '') {
        alert('El password es obligatorio');
        return;
    }

    if (!(tipo.value === '1') && !(tipo.value === '2') && !(tipo.value === '3')) {
        alert('El Tipo de Empleado no es válido');
        return;
    }

    if (!(dpi.value === '12345678') && !(dpi.value === '87654321')) {
        alert('El Empleado no ha sido registrado aún');
        return;
    }

    console.log('-->NUEVO USUARIO<--');
    console.log('Usuario: ' + usuario.value);
    console.log('Contraseña: ' + password.value);
    console.log('Tipo Empleado: ' + tipo.value);
    console.log('Empleado DPI: ' + dpi.value);
});


