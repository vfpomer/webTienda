<?php session_start();
if (empty($_SESSION['id'])) {
    header('Location: ./');
} ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Tienda colchones</title>
    <!-- Custom fonts for this template-->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="../assets/css/admin.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>

<body id="page-top">

    <!-- Pagina Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Menu -->
            <hr class="sidebar-divider my-0">
            <li class="nav-item">
                <a class="nav-link" href="../index.php">Volver a la web</a>          
            </li>

            <!-- Divisor -->
            <hr class="sidebar-divider">

            <!-- Nav Item - Tablas -->
            <li class="nav-item">
                <a class="nav-link" href="categorias.php">
                    <i class="fas fa-tag"></i>
                    <span>Categorias</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="productos.php">
                    <i class="fas fa-list"></i>
                    <span>Productos</span></a>
            </li>

            <!-- Divisor -->
            <hr class="sidebar-divider d-none d-md-block">
        </ul>

        <!-- Contenido Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Contenido -->
            <div id="content">
                <!-- Topbar - barra superior -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Topbar Nav -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Nav info Usuario -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?php echo $_SESSION['nombre']; ?></span>    
                                <img class="img-profile rounded-circle" src="../assets/img/logoFlex.jpg">
                            </a>
                        </li>  
                        <li>
                            <a class="dropdown-item" href="../salir.php"  onClick="return confirmar()">
                                Salir
                            </a>
                        </li>
                    </ul>
                </nav>
              
                <div class="container-fluid">

                   <script type="text/javascript">
                     function confirmar(){
                         var respuesta = confirm("¿Estas seguro que quieres salir?"); 
                         if(respuesta == true){
                             return true;
                         }else{
                             return false;
                         }
                     }
                 </script>
                    