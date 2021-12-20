let usuario = document.getElementById('userName');
let password = document.getElementById('userPassword');
let boton = document.getElementById('boton');

console.log('--> REQUISITOS <--');
console.log('--> Podrá acceder unicamente si\n el usuario está registrado en el sistema<--');
console.log('----> USUARIOS YA DEFINIDOS PARA ACCEDER: <----');
console.log('--> ADMINISTRADOR:\nusuario: Admin\npassword: admin2021 <--');
console.log('--> SECRETARIA:\nusuario: Secre\npassword: secre2021 <--');
console.log('--> LABORATORISTA:\nusuario: Laboratorista\npassword: lab2021 <--');

boton.addEventListener('click', () => {
    if (usuario.value === '' || password.value === '') {
        alert('Todos los campos son obligatorios');
    } else if (usuario.value === 'Admin' && password.value === 'admin2021') {
        alert('USUARIO EN ACCESO:\nUsuario: ' + usuario.value + '\nContraseña: ' + password.value);
        boton.href = "./views/moduloAdministrador.html";
    } else if (usuario.value === 'Secre' && password.value === 'secre2021') {
        alert('USUARIO INGRESADO:\nUsuario: ' + usuario.value + '\nContraseña: ' + password.value);
        boton.href = "./views/moduloSecretaria.html";
    } else if (usuario.value === 'Laboratorista' && password.value === 'lab2021') {
        alert('USUARIO INGRESADO:\nUsuario: ' + usuario.value + '\nContraseña: ' + password.value);
        boton.href = "./views/moduloLaboratorista.html";
    } else {
        alert('El usuario no está registrado en el Sistema');
    }
});