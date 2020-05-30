<?php session_start(); ?>
<?php include("sources/conexion.php")?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AYENDA</title>
    <script src="https://kit.fontawesome.com/7045981063.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="sources/styles/style.css">
</head>
<body class="container">
    <div class="banner">
        <div class="titulo">
            <a class="encabezado">AYENDA</a>
            <div class="text">
                <p>La mejor app</p>
                <p>Para agendar tus clientes</p>
            </div>
        </div>
        <div class="botones">
            <div class="btn-type-1" message='hellow'> Comercios </div>
            <div class="busqueda">
                <input class="input" type="text" placeholder="buscar">
                <h2 class="lupa">&#128270</h2>
            </div>
            <div id="ver-todos" class="btn-type-1" message='hellow'> Ver todos </div>
        </div>
    </div>
    <div class="negocios">
        <?php
            $query = "SELECT negocio, foto, diasHabiles, horarioRegular, telefono FROM negocios
            inner join supervisores
            on negocios.idSupervisor = supervisores.IdSupervisor";
            $result_users = mysqli_query($conn, $query);
            while($row = mysqli_fetch_array($result_users)){ ?>
            <div class="negocio">
                <div class="items">
                    <div class="datos">
                        <div class="nombreNegocio"><?php echo $row['negocio'] ?></div>
                        <div class="habil">
                            <div class="dias"><?php echo $row['diasHabiles'] ?></div>
                            <div class="horario"><?php echo $row['horarioRegular'] ?></div>
                        </div>
                        <div class="telefono"><?php echo $row['telefono'] ?></div>
                    </div>
                    <div class="agendar">
                        <button class="btnAgendar">Agendar</button>
                    </div>
                </div>
                <div class="logos">
                    <img src="<?php echo $row['foto'] ?>" height="298px" width="298px" alt="">
                </div>
            </div>


            <?php } ?>

    </div>

    <!-- Delegando parte de la logica al navegador -->
    <script src="./sources/scripts/index.js"></script>
</body>
</html>
