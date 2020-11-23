<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <form method="post" action="<?= $_SERVER['PHP_SELF'] ?>">
        <select name="Prof_Est">
            <option value="1">Profesor</option>
            <option value="2">Estudiante</option>
        </select><br>
        <input type="submit" name="validar" value="Enviar">
    </form>
  </body>
</html>
<?php
 if(isset($_POST["validar"])){
   if($_POST["Prof_Est"]==1){
     include 'profesor.php';
   }
   elseif($_POST["Prof_Est"]==2){
     include 'estudiante.php';
   }
 }
?>
