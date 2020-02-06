<?php
  header("Content-type: application/json");
  ini_set("display_errors", 1);
  error_reporting(E_ALL);
  /* Aquí se agregan los eventos en IFS generalmente dividos en modulos aquí generalmente se agrega la validación por token de autenticación*/
  $server = array();
  switch ($_GET["source"]) {



    case "post":

      include_once ('../application/views/controller/controllerStore.php');
      break;

    
    default:
      echo "revise url source2";
      break;
  }
  echo json_encode($server);
  ?>