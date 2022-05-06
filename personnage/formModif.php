<?php 
require_once("./index.php");
require_once("./connexion.php");
?>

<html>
    <div class="container">
    <form action="" method="POST" enctype="multipart/form-data">
    Nom:<input type="text" name="Nom" required>
    <br>
    Appartenance:<input type="text" name="Appartenance" required>
    <br>
    Arme:<input type="text" name="Arme" required>
    <br>
    Titre:<input type="text" name="Titre" required>
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
    $Appartenance=$_POST["Appartenance"];
    $Arme=$_POST["Arme"];
    $Titre=$_POST["Titre"];
    $querry=$conn->prepare("UPDATE personnage SET Nom=?, Appartenance=?, Arme=?,  Titre=? WHERE id='$id'");
    $querry->bindValue(1,$Nom);
    $querry->bindValue(2,$Appartenance);
    $querry->bindValue(3,$Arme);
    $querry->bindValue(4,$Titre);
    $querry->execute();
    header('location:http://localhost/web/Projet/personnage\personnage.php');
}
?>
