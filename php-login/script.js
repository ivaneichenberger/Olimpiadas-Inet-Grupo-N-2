document.addEventListener('DOMContentLoaded', function() {
    const botonesVerDetalle = document.querySelectorAll('.ver-detalle');
    
    botonesVerDetalle.forEach(function(boton) {
        boton.addEventListener('click', function(event) {
            event.preventDefault();
            const id = this.getAttribute('data-id');
            window.location.href = 'ver_detalle.php?id=' + id;
        });
    });
});
