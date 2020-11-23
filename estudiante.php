<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <form method="post" action="<?= $_SERVER['PHP_SELF'] ?>">
        nombre: <input type="text" name="" value=""><br>
        email: <input type="text" name="" value=""><br>
        <input type="submit" name="val_est" value="Enviar">
    </form>
  </body>
</html>
<?php
 if(isset($_POST["val_est"])){

 }
?>
