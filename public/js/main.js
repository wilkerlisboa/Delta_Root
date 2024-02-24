document.addEventListener('DOMContentLoaded', function () {
    var menuIcon = document.getElementById('menuIcon');
    var rightMenu = document.querySelector('.right');

    menuIcon.addEventListener('click', function () {
        rightMenu.classList.toggle('open');
    });

    document.addEventListener('click', function (event) {
        // Fecha o menu se o clique ocorrer fora do ícone do menu e da barra lateral
        if (!menuIcon.contains(event.target) && !rightMenu.contains(event.target)) {
            rightMenu.classList.remove('open');
        }
    });
});