<?php
    session_start();

    if(!isset($_SESSION['email'])){
        header('location:../utilisateur/login.html');
    }
    
?>


<?php 
require_once("./index.php");
require_once("./connexion.php");
?>

<html>
    <div class="container">
    <form action="" method="POST" enctype="multipart/form-data">
    Arc:<input type="text" name="Arc" require>
    <br>
    Manga:<input type="text" name="Manga" require>
    <br>
    Anime:<input type="text" name="Anime" require>
    <br>
    <input type="submit" name="modif" value="Modifier">
    </form>
    </div>
</html>
<?php
if(isset($_REQUEST["modifid"])){
    $id=$_REQUEST["modifid"];
}
if(isset($_POST["modif"])){
    $Arc=$_POST["Arc"];
    $Manga=$_POST["Manga"];
    $Anime=$_POST["Anime"];
    $querry=$conn->prepare("UPDATE one_piece SET Arc=?, Manga=?, Anime=? WHERE id='$id'");
    $querry->bindValue(1,$Arc);
    $querry->bindValue(2,$Manga);
    $querry->bindValue(3,$Anime);
    $querry->execute();
    header('location:./histoire.php');
}
?>
