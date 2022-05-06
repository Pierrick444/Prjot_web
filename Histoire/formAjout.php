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
        <title>Ajout Arc One Piece</title>

    </head>
    <?php
    require_once("./index.php");
    ?>
<html>
    <div class="container">
    <form action="./ajout.php" method="POST" enctype="multipart/form-data">
    Arc:<input type="text" name="arc" required>
    <br>
    Manga:<input type="text" name="manga" required>
    <br>
    Anime:<input type="text" name="anime" required>
    <br>
    <input type="submit" name="ajout" value="Valider">
    </form>
    </div>
</html>