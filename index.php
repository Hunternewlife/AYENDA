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
<body>
    <div class="banner">
        <div class="titulo">
            <a class="encabezado">AYENDA</a>
            <div class="text">
                <p>La mejor app</p>
                <p>Para agendar tus clientes</p>
            </div>
        </div>
        <div class="botones">
            <div class="comercios" message='hellow'> Comercios </div>
            <div class="busqueda">
                <input class="input" type="text" placeholder="buscar">
                <h2 class="lupa">&#128270</h2>
            </div>
        </div>
    </div>
    <div class="negocios">
        <?php 
            $query = "SELECT rol FROM roles ";
            $result_users = mysqli_query($conn, $query);
            while($row = mysqli_fetch_array($result_users)){ ?>
            <?php echo $row['rol'] ?>
            <?php } ?>
        
    </div>
</body>
</html>