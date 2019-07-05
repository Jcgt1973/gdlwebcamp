(function() {
    'use strict';

    var regalo =document.getElementById('regalo');
    document.addEventListener('DOMContentLoaded', function(){
    
    if(document.getElementById('mapa')) {
        var map = L.map('mapa').setView([42.305191, -1.970536], 25);

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        }).addTo(map);

        L.marker([42.305191, -1.970536]).addTo(map)
            .bindPopup('UP DIGITAL CALAHORRA')
            .openPopup()
            .bindTooltip('La mejor tienda de infomática de Calahorra')
            .openTooltip();
    }

        //Campos datos usuarios
        var nombre = document.getElementById('nombre');
        var apellido = document.getElementById('apellido');
        var email = document.getElementById('email');

        //Campo pases
        var pase_dia= document.getElementById('pase_dia');
        var pase_dosdias= document.getElementById('pase_dosdias');
        var pase_completo= document.getElementById('pase_completo');

        //Botones y divs
        var calcular = document.getElementById('calcular');
        var errorDiv = document.getElementById('error');
        var botonRegistro = document.getElementById('btnRegistro');
        var lista_Productos = document.getElementById('Lista-productos');
        var suma = document.getElementById('suma-total');

        botonRegistro.disabled = true;

        //Extras

        var camisas = document.getElementById('camisa_evento');
        var etiquetas = document.getElementById('etiquetas');

        

        //Regalos
        var regalo= document.getElementById('regalo');

        if(document.getElementById('calcular')) {

            calcular.addEventListener('click', CalcularMontos);

            /*pase_dia.addEventListener('blur', mostrarDias);
            pase_dosdias.addEventListener('blur', mostrarDias);
            pase_completo.addEventListener('blur', mostrarDias);*/

            pase_dia.addEventListener('input', mostrarDias);
            pase_dosdias.addEventListener('input', mostrarDias);
            pase_completo.addEventListener('input', mostrarDias);

            nombre.addEventListener('blur', validarCampos);
            apellido.addEventListener('blur', validarCampos);
            email.addEventListener('blur', validarCampos);
            email.addEventListener('blur', validarEmail);

            function validarCampos() {
                if(this.value =='') {
                    errorDiv.style.display = 'block';
                    errorDiv.innerHTML = 'Este campo es obligatorio';
                    this.style.border = '1px solid red';
                    errorDiv.style.border = '1px solid red';
                }
                else {
                    errorDiv.style.display ='none';
                    errorDiv.innerHTML='';
                    this.style.border='';
                    errorDiv.style.border='';
                }
        }

        function validarEmail() {
            if(this.value.indexOf("@") > -1) {
                errorDiv.style.display='none';
                errorDiv.innerHTML='';
                this.style.border='';
                errorDiv.style.border='';
            }
            else {
                errorDiv.style.display = 'block';
                errorDiv.innerHTML = 'Debe ser un correo electrónico válido';
                this.style.border = '1px solid red';
                errorDiv.style.border = '1px solid red';
            }

        }

        function CalcularMontos(event){
            event.preventDefault();
            if(regalo.value === '') {
                alert("Debes elegir un regalo");
                regalo.focus();
            }else {
                var EntradasDia = parseInt(pase_dia.value, 10)|| 0,
                    Entradas_dossdias = parseInt(pase_dosdias.value, 10)|| 0,
                    EntradasCompleta = parseInt(pase_completo.value, 10)|| 0,
                    cantCamisas = parseInt(camisas.value, 10)|| 0,
                    cantEtiquetas = parseInt(etiquetas.value, 10)|| 0,
                    regalos = regalo;
                    

                var totalPagar = (EntradasDia * 30) + (Entradas_dossdias * 45) + (EntradasCompleta * 50) + ((cantCamisas * 10) * .93) + (cantEtiquetas * 2);
                console.log(totalPagar);

                var listadoProductos =[];

                if(EntradasDia >=1) {
                    listadoProductos.push(EntradasDia + ' Pases por día');
                }
                
                if(Entradas_dossdias >=1) {
                    listadoProductos.push(Entradas_dossdias + ' Pases por 2 días');
                }

                if(EntradasCompleta >=1) {
                    listadoProductos.push(EntradasCompleta + ' Pases Completos');
                }

                if(cantCamisas >=1) {
                    listadoProductos.push(cantCamisas + ' Camisas');
                }

                if(cantEtiquetas >=1) {
                    listadoProductos.push(cantEtiquetas + ' Etiquetas');
                }

                if(regalos.value=='PLU') {
                    listadoProductos.push('Plumas de regalo');
                }

                if(regalos.value=='PUL') {
                    listadoProductos.push('1 Pulsera de Regalo')
                }

                if(regalos.value=='ETI') {
                    listadoProductos.push('1 Paquete de etiquetas de ragalo');
                }

                lista_Productos.style.display="block";

                lista_Productos.innerHTML = '';
                for(var i = 0; i< listadoProductos.length; i++) {
                    lista_Productos.innerHTML += listadoProductos[i] + '<br/>';
                }

                suma.innerHTML = totalPagar.toFixed(2) + " €";

                botonRegistro.disabled= false;
                document.getElementById('total_pedido').value= totalPagar;
            }


            
        }

        function mostrarDias() {
            var EntradasDia = parseInt(pase_dia.value, 10)|| 0,
                Entradas_dossdias = parseInt(pase_dosdias.value, 10)|| 0,
                EntradasCompleta = parseInt(pase_completo.value, 10)|| 0;

                var diasElegidos =[];

                if(EntradasDia > 0) {
                    diasElegidos.push('viernes');
                }
                if(Entradas_dossdias > 0) {
                    diasElegidos.push('viernes','sabado');
                }
                if(EntradasCompleta > 0) {
                    diasElegidos.push('viernes','sabado','domingo');
                }
                for(var i = 0; i < diasElegidos.length; i++) {
                    document.getElementById(diasElegidos[i]).style.display = 'block';
                }
                if(diasElegidos.length == 0 ) {
                    var todosDias = document.getElementsByClassName('contenido-dia');
                    for(var i = 0; i < todosDias.length; i++) {
                    todosDias[i].style.display = 'none';
                    }
                }
        }

    }





    }); //DOM CONTENT LOADED
})();

    $(function() {

        //lettering

        $('.nombre-sitio').lettering();

        //Agregar clase a menu

        $('body.conferencia .navegacion-principal a:contains("Conferencia")').addClass('activo');
        $('body.Calendario .navegacion-principal a:contains("Calendario")').addClass('activo');
        $('body.Invitados .navegacion-principal a:contains("Invitados")').addClass('activo');
        

        // Menu fijo
        var windowHeight = $(window).height();
        var barraAltura = $('.barra').innerHeight();

        $(window).scroll(function() {
            var scroll = $(window).scrollTop();
            
            if(scroll > windowHeight) {
                $('.barra').addClass('fixed');
                $('body').css({'margin-top': barraAltura+'px'});
            } else {
                $('.barra').removeClass('fixed');
                $('body').css({'margin-top': '0px'});
            }
        });

        // Menu responsive

        $('.menu-movil').on('click', function() {
            $('.navegacion-principal').slideToggle();
        });
        // Programa de Conferencias

        $('div.ocultar').hide();
        $('.programa-evento .info-curso:first').show();
        $('.menu-programa a:first').addClass('activo');

        $('.menu-programa a').on('click', function() {

            $('.menu-programa a').removeClass('activo');
            $(this).addClass('activo');
            $('.ocultar').hide();
            var enlace = $(this).attr('href');
            $(enlace).fadeIn(1000);
            return false;
        });

        // Animaciones para los números

        $('.resumen-evento li:nth-child(1) p').animateNumber({ number: 6}, 1200);
        $('.resumen-evento li:nth-child(2) p').animateNumber({ number: 15}, 1200);
        $('.resumen-evento li:nth-child(3) p').animateNumber({ number: 3}, 1400);
        $('.resumen-evento li:nth-child(4) p').animateNumber({ number: 9}, 1500);

        // Cuenta Regresiva

        $('.cuenta-regresiva').countdown('2018/12/10 09:00:00', function(event) {
            $('#dias').html(event.strftime('%D'));
            $('#horas').html(event.strftime('%H'));
            $('#minutos').html(event.strftime('%M'));
            $('#segundos').html(event.strftime('%S'));
        });

        //Colorbox

        $('.invitado-info').colorbox({inline:true, width:"50%"})
        $('.boton_newsletter').colorbox({inline:true, width:"50%"})
    });



