<?php require_once "config/conexion.php"; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Tienda</title>
   <!-- Favicon-->
   <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
    <!-- CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="assets/css/estilo.css" rel="stylesheet" />
   <!--script-->
   <script src="assets/js/jquery-3.6.1.js"></script>
   <script src="assets/js/scripts.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>

<body id="container-page-product">
<div class="container">
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
            <a href="index.php" class="navbar-brand">
                <img src="assets/img/tienda.jpg" alt="Logo Tienda">
            </a>            
        </div>
            <a href="admin/index.php" class="">
                <img src="assets/img/icono/admin.jpg" alt="Imagen administrador" width="35px">
            </a>
    </nav>

<?php 

$idProducto=consultasSQL::clean_string($_GET['id']);
$productoinfo=  ejecutarSQL::consultar("SELECT productos.id,productos.nombre,productos.id_categoria, productos.descripcion, categorias.categoria,productos.precio_normal,productos.descuento, productos.precio_rebajado,productos.cantidad, productos.composicion, productos.cuidados, productos.imagen FROM categorias INNER JOIN productos ON productos.id_categoria=categorias.id  WHERE productos.id='".$idProducto."'");

while($fila=mysqli_fetch_array($productoinfo, MYSQLI_ASSOC)){
echo '
<div class="container">
    <div class="row">
        <div class="col-md-6 order-md-1">
            <img class="card-img-top" src="assets/img/'.  $fila['imagen'].' " >
        </div>
        <div class="col-md-6 order-md-2">
            <h1 class="nombre">'.$fila['nombre'].'</h1><br>
            <h4>Desde:</h4>
            ';
            if($fila['descuento']>0){ 
                echo'
                <span><h4 class="precio"><del>'.number_format($fila['precio_normal'], 2, ',', '').'  €</del></span>
                &nbsp; &nbsp;<span>  - '. $fila['descuento'] .' %</span>
                &nbsp; &nbsp; <strong>'.number_format($fila['precio_rebajado'], 2, ',', '').'  €</strong></h4>
                ';
             }else{
                echo'
                <h4>'.number_format($fila['precio_normal'], 2, ',', '').'  €</h4>
                ';
            } 
            echo'
            <h3>¿Porque elegir '.$fila['nombre'].'?</h3>
            <p class=""> '.$fila['descripcion'].'</p>
            <p class=""> '.$fila['composicion'].'</p>
            <p class=""> '.$fila['cuidados'].'</p>
            ';
            }
        ?>   
    
    <div class="btn btn-success">
    <a href="contacto.php" class="btn btn-success">Contacta con nosotros</a>
    </div>    
</div>
<a href="index.php"><button class="btn btn-primary" type="button">Volver al menu</button></a>
</body>
</html>


