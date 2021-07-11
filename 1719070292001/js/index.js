;(function(){
    $(".modalCarga").load("modalAviso.php")
    $(".cerrar").click(function(){
        $('#modalEmpresa').modal('hide');
    })
})()