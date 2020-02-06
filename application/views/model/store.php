<?php
//require_once('../vendor/autoload.php');//Llamare el autoload de la clase que genera el QR
//use Endroid\QrCode\QrCode;

include '../model/conexion.php';
class Store extends Conexion
{
function openStore($store,$iduser,$cash,$waiter)
{
    if($this->openRegisters($store,$iduser,$cash,$waiter))
    {
        echo "ok";
        $this->conexion->commit();
    }
    else
    {
        echo "error";
        $this->conexion->rollback();
    
  }

        $mysqli = $this->fullConnect('');
        $query = "UPDATE  food_stores set status=1 where id=?";
        $mysqli->query($query);
        if($stmt = $mysqli->prepare($query))
        {
            $stmt -> bind_param('i',$store);
            if($stmt->execute()){
                $stmt->free_result();
                $stmt->close();
                return true;
            }
            
         } else{
         return false;}

    }
function openRegisters($store,$iduser,$cash,$waiter){
    $waitercc = '';

    foreach ($waiter as $key => $value) {

       $waitercc .= $value ? $key.','.$value.',' : '';

    }
  $mysqli = $this->fullConnect('');
  $query = "INSERT INTO food_registers(date,status,user_id,cash_inhand,store_id,waiterscih) values(now(),1,?,?,?,?)";
  $mysqli->query($query);
  if($stmt = $mysqli->prepare($query))
  {
      $stmt -> bind_param('idis',$iduser,$cash,$store,$waitercc);
      if($stmt->execute()){
          $stmt->free_result();
          $stmt->close();
          return true;
      }
      
   } else
   return false;


}

}


//------CREDITOS



?>
