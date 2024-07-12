<?php require_once "config/conexion.php"; 
require_once "config/config.php"; 
?>
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
</head>

<body>
    <!-- Navegación-->
    <div class="nav" id="navegacion">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container-fluid">
                <a href="index.php" class="navbar-brand">
                    <img src="assets/img/tienda.jpg" alt="Logo tienda">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="nav nav-pills">
                        <li class="nav-item"> <a href="#" class="nav-link" category="all">Todo</a></li>
                        <?php
                        $query = mysqli_query($conexion, "SELECT * FROM categorias");
                        while ($fila = mysqli_fetch_assoc($query)) { ?>
                           <li class="nav-item" style="color: #2271b3"> <a href="#" class="nav-link" category="<?php echo $fila['categoria']; ?>"><?php echo $fila['categoria']; ?></a></li>
                        <?php } ?>
                         <a href="contacto.html" class="nav-link" style="color: #2271b3">Contacta con nosotros</a> </li>
                    </ul>
                </div>   
            </div>
            <li class="nav-item"> <a href="admin/index.php" class="nav-link">  <img src="assets/img/icono/admin.jpg" alt="Imagen administrador" width="35px"></a></li>        
        </nav>     
    </div>
  
    <section class="album py-5 bg-light">
        <div class="container">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

               <?php

                  $query = mysqli_query($conexion, "SELECT p.*, c.id AS id_cat, c.categoria FROM productos p INNER JOIN categorias c ON c.id = p.id_categoria ORDER BY nombre" );
                  $result = mysqli_num_rows($query);
                  
                  if ($result > 0) {
                   
                    while ($fila = mysqli_fetch_assoc($query)) {
                            
                ?>
                    <!--DATOS DE LOS PRODUCTOS-->
                    <!--Si se estrecha el navegador, las columnas se muestran verticalmente.
                     A medida que aumenta su anchura, la rejilla muestra su aspecto horizontal normal.
                     5 columnas-->
                        <div class="col mb-5 productos" category="<?php echo $fila['categoria']; ?>">
                            <div class="card h-100">
                            
                                <!-- nombre producto-->
                                <div class="badge bg-danger text-white" style="top: 0.5rem; right: 0.5rem"><?php echo ($fila['precio_normal'] > $fila['precio_rebajado']) ? 'Oferta  ' : '' ; ?></div>
                                <h5 class="fw-bolder"><?php echo $fila['nombre'] ?></h5>
                                <!-- imagen producto-->
                                <img class="card-img-top" src="assets/img/<?php echo $fila['imagen']; ?>" alt="Foto de <?php echo $fila['nombre']; ?> " />
                                <!-- detalles producto-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                     <!-- Precio producto-->

                                     <?php if($fila['descuento']>0){ ?>

                                        <span class="text-muted text-decoration-line-through"><?php echo number_format ($fila['precio_normal'] , 2, ',' , '');?>  €</span>
                                        - <?php echo $fila['descuento'] ?>  %
                                        <strong><?php echo number_format ($fila['precio_rebajado'] , 2, ',' , ''); ?>  €</strong>
                                    
                                        <?php }else{?>

                                        <span><strong><?php echo number_format ($fila['precio_normal'] , 2, ',' , '');?>  €</strong></span>
                           
                                        <?php } ?> <!--cierrre else-->

                                    </div>
                                </div> <!--cierre detalles producto-->
                                <!-- acciones productos-->

                                <div class="btn-group">
                                    <a href="infoProducto.php?id=<?php echo $fila['id']; ?>" class="btn btn-primary">Detalles</a>
                                </div>
                    
                            </div>
                        </div><!--FIN DE DATOS DE LOS PRODUCTOS-->
                                    
                <?php 
                
                    } //cierre while            
                    //si no hay productos mostramos el mensaje
                }else{
                    echo '<h2 class="text-center">Lo sentimos, no hay productos registrados en la categoría </h2>';
                }
                ?>
                  
        </div> <!--cierre div container-->
    </section>

    <!-- Footer-->
    <?php require_once "admin/includes/footer.php"; ?>

    <!--script-->
    <script src="assets/js/jquery-3.6.1.js"></script>
    <script src="assets/js/scripts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

    </body>
</html>