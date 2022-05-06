<?php
    session_start();

    if(!isset($_SESSION['email'])){
        header('location:../utilisateur/login.html');
    }
    
?>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Ajouter un fruit du démon</title>

    </head>
    <?php
    require_once("./index.php");
    ?>
<html>
    <div class="container">
    <form action="./ajout.php" method="POST" enctype="multipart/form-data">
    nom:<input type="text" name="Nom" required>
    <br>
    utilisateur:<input type="text" name="Utilisateur" required>
    <br>
    type:<input type="text" name="Type" required>
    <br>
    pouvoir:<input type="text" name="Pouvoir" required>
    <br>
    <input type="submit" name="ajout" value="Valider">
    </form>
    </div>
</html>