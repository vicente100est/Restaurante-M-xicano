<?php
class Conexion
{
   private $link;
 /*function Conexion()
 {
 }*/
 function getLink($token)
 {
   //$token = 'institute';
   $token="food3";
   $server = 'localhost';
   $user = 'rgm';
   //$user='root';
   $pass = 'virusrgmarty';
   //$pass='';
   $this->link=new mysqli($server, $user, $pass, $token);
   $this->link->autocommit(FALSE);
   if (mysqli_connect_errno ())
      return null;
   else
   {
      $this->link->autocommit(FALSE);
      return $this->link;
   }
 }
 function cerrarConexion()
 {
   mysqli_close($this->link);
 }
 function rollback()
 {
   mysqli_rollback($this->link);
 }
 function commit()
 {
   mysqli_commit($this->link);
 }
 function fullConnect($token)
 {
   
    $mysqli = $this->conexion = $this->getLink($token);
      return $mysqli;
 }
 function multiconsultas($sql,$val1,$val2,$val3,$val4,$tipo,$vars)
 {
   $mysqli = $this->fullConnect('');
   if ($stmt = $mysqli->prepare($sql))
   {



                switch ($vars) {
          case 1:
         
           $stmt->bind_param($tipo, $val1);         
            break;
           case 2:
           $stmt->bind_param($tipo, $val1, $val2); # code...
           break;
           case 3:
            $stmt->bind_param($tipo, $val1, $val2, $val3);            # code...
            break;
          case 4:
          $stmt->bind_param($tipo, $val1, $val2, $val3, $val4);
            break;
          default:
          
            break;
        }
        if ($stmt->execute()) {
          $stmt->bind_result($resultado);
          $stmt->fetch();
          $stmt->free_result();
          $stmt->close();
          return $resultado;
        }
        return "Error";
   }
   else
        return false;
 }
}
?>
