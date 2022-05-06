<?php 
require_once("./index.php");
require_once("./connexion.php");
?>

<html>
    <div class="container">
    <form action="" method="POST" enctype="multipart/form-data">
    nom:<input type="text" name="Nom" required>
    <br>
    localisation:<input type="text" name="Localisation" required>
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
    $Nom=$_POST["Nom"];
    $Localisation=$_POST["Localisation"];
    $querry=$conn->prepare("UPDATE monde SET Nom=?, Localisation=? WHERE id='$id'");
    $querry->bindValue(1,$Nom);
    $querry->bindValue(2,$Localisation);
    $querry->execute();
    header('location:http://localhost/web/Projet/monde/monde.php');
}
?>
