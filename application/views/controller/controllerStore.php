<?php
  header("Content-type: application/json");
  ini_set("display_errors", 1);
  error_reporting(E_ALL);
include '../model/store.php';

ini_set('display_errors',1);  error_reporting(E_ALL);
$server = array();
$fath = new Store();
switch ($_GET['source']) {



  case 'post':
 
echo "hola";
    $server['datos']=$fath->openStore($_POST['store'],$_POST['id_user'],$_POST['cash'],$_POST['waitersCach']);
    
  if(!empty($server['datos'])){
    $server['status']="ok";
    //$server['openregisters']=$fath->openRegisters($_POST['store'],$_POST['id_user'],$_POST['cash']);
    $fath->conexion->commit();
    //$server['vistonotis']=$fath->updNotis($_POST['source3']);
  }else{
    $server['status']="error";
    $fath->conexion->rollback();
  }
  break;
  
  
  default:
    # code...
    break;
}

echo json_encode($server);
?>