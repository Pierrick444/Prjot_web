<?php 
require_once("./index.php");
require_once("./connexion.php");
?>

<html>
    <div class="container">
    <form action="" method="POST" enctype="multipart/form-data">
    Nom:<input type="text" name="Nom" required>
    <br>
    appartenance:<input type="text" name="appartenance" required>
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
    $appartenance=$_POST["appartenance"];
    $querry=$conn->prepare("UPDATE autre SET Nom=?, appartenance=?WHERE id='$id'");
    $querry->bindValue(1,$Nom);
    $querry->bindValue(2,$appartenance);
    $querry->execute();
    header('location:http://localhost/web/Projet/personnage/autre/autre.php');
}

?>
