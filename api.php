<?php
require('./sources/conexion.php');

// Aqui retorno datos en formato JSON
header('Content-Type: application/json');
if (array_key_exists("operation", $_GET)) {
  // A traves del parametro operation indico la operacion a realizar en la BDD
  $operation = $_GET["operation"];

  // Aqui, todos los negocios
  if ($operation === "all_businesses") {
    $query =  "SELECT * FROM negocios AS n ";
    $query .= "INNER JOIN supervisores AS s ON n.idsupervisor = s.idSupervisor";
    $result = mysqli_query($conn, $query);
    $rows = mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo json_encode($rows);
  }

  // Aqui, negocios filtrados por similitud de nombre
  if ($operation === "like_business") {
    // Espero otro parametro de url
    if (array_key_exists("like_key", $_GET)) {
      $like_key = $_GET["like_key"];
      // Aqui selecciono negocios que contienen la palabra indicada (insensible
      // a mayusculas y minusculas)
      $query =  "SELECT * FROM negocios AS n ";
      $query .= "INNER JOIN supervisores as s ON n.idsupervisor = s.idSupervisor ";
      $query .= "WHERE n.negocio LIKE '%$like_key%'";
      $result = mysqli_query($conn, $query);
      $rows = mysqli_fetch_all($result, MYSQLI_ASSOC);
      echo json_encode($rows);
    }
  }
}
?>
