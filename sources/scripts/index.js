// Aqui solicito todos los negocios
function getAllBusinesses() {
  fetch('./api.php?operation=all_businesses')
    // Una vez obtengo la respuesta, extraigo el contenido como JSON
    .then(response => response.json())
    //
    .then(data => loadBusinesses(data));
}

// Construccion de la seccion de negocios por manipulacion del DOM
function loadBusinesses(businesses) {
  let divNegocios = document.querySelector('.negocios');
  divNegocios.innerHTML = '';
  for (let business of businesses) {
    // Contenedor para un negocio individual
    let divNegocio = document.createElement('div');
    divNegocio.classList.add('negocio');
    divNegocios.appendChild(divNegocio);

    let divItems = document.createElement('div');
    divItems.classList.add('items');
    divNegocio.appendChild(divItems);

    let divDatos = document.createElement('div');
    divDatos.classList.add('datos');
    divItems.appendChild(divDatos);

    let divNombreNegocio = document.createElement('div');
    divNombreNegocio.classList.add('nombreNegocio');
    divNombreNegocio.textContent = business['negocio'];
    divDatos.appendChild(divNombreNegocio);

    let divHabil = document.createElement('div');
    divHabil.classList.add('habil');
    divDatos.appendChild(divHabil);

    let divDias = document.createElement('div');
    divDias.classList.add('dias');
    divDias.textContent = business['diasHabiles'];
    divHabil.appendChild(divDias);

    let divHorario = document.createElement('div');
    divHorario.classList.add('horario');
    divHorario.textContent = business['horarioRegular'];
    divHabil.appendChild(divHorario);

    let divTelefono = document.createElement('div');
    divTelefono.classList.add('telefono');
    divTelefono.textContent = business['telefono'];
    divDatos.appendChild(divTelefono);

    let divAgendar = document.createElement('div');
    divAgendar.classList.add('agendar');
    divItems.appendChild(divAgendar);

    let buttonAgendar = document.createElement('button');
    buttonAgendar.classList.add('btnAgendar');
    buttonAgendar.textContent = 'Agendar';
    divAgendar.appendChild(buttonAgendar);

    let divLogos = document.createElement('div');
    divLogos.classList.add('logos');
    divNegocio.appendChild(divLogos);

    let img = document.createElement('img');
    img.setAttribute('src', business['foto']);
    img.setAttribute('width', '298px');
    img.setAttribute('height', '298px');
    divLogos.appendChild(img);
  }
}

// Cargar todos los negocios por defecto
getAllBusinesses();
