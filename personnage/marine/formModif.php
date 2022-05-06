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
    titre:<input type="text" name="titre" required>
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
    $titre=$_POST["titre"];
    $querry=$conn->prepare("UPDATE marine SET Nom=?, Appartenance=?, Arme=?,  titre=? WHERE id='$id'");
    $querry->bindValue(1,$Nom);
    $querry->bindValue(2,$Appartenance);
    $querry->bindValue(3,$Arme);
    $querry->bindValue(4,$titre);
    $querry->execute();
    header('location:http://localhost/web/Projet/personnage/marine/marine.php');
}

?>
