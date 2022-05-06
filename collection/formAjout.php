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
        <title>Ajouter un produit One Piece</title>

    </head>
    <?php
    require_once("./index.php");
    ?>
<html>
    <div class="container">
    <form action="./ajout.php" method="POST" enctype="multipart/form-data">
    type:<input type="text" name="Type" required>
    <br>
    nom:<input type="text" name="Nom" required>
    <br>
    image:<input type="file" name="Image" required>
    <br>
    numéro:<input type="text" name="Numéro" required>
    <br>
    prix:<input type="text" name="Prix" required>
    <br>
    site<input type="text" name="Site" required>
    <br>
    <input type="submit" name="ajout" value="Valider">
    </form>
    </div>
</html>