<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <form method="post" action="<?= $_SERVER['PHP_SELF'] ?>">
        nombre: <input type="text" name="" value=""><br>
        idioma:
        <select name="Prof_Est">
            <option value="1">Ingles</option>
            <option value="2">Español</option>
        </select><br>
        <input type="submit" name="val_prof" value="Enviar">
    </form>
  </body>
</html>
<?php
 if(isset($_POST["val_prof"])){

 }
?>
