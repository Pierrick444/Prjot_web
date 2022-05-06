<?php
    session_start();

    if(!isset($_SESSION['email'])){
        header('location:../../utilisateur/login.html');
    }
    
?>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Ajout Personnage One Piece</title>

    </head>
    <?php
    require_once("./index.php");
    ?>
<html>
    <div class="container">
    <form action="./ajout.php" method="POST" enctype="multipart/form-data">
    nom:<input type="text" name="nom" required>
    <br>
    image:<input type="file" name="image" required>
    <br>
    appartenance:<input type="text" name="appartenance" required>
    <br>
    arme:<input type="text" name="arme" required>
    <br>
    titre:<input type="text" name="titre" required>
    <br>
    <input type="submit" name="ajout" value="Valider">
    </form>
    </div>
</html>