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
    type:<input type="text" name="Type" required>
    <br>
    nom:<input type="text" name="Nom" required>
    <br>
    numéro:<input type="text" name="Numéro" required>
    <br>
    prix:<input type="text" name="Prix" required>
    <br>
    site:<input type="text" name="Site" required>
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
    $Type=$_POST["Type"];
    $Nom=$_POST["Nom"];
    
    $Numéro=$_POST["Numéro"];
    $Prix=$_POST["Prix"];
    $Site=$_POST["Site"];
    $querry=$conn->prepare("UPDATE collection SET Type=?,Nom=?, Numéro=?,  Prix=?, Site=? WHERE id='$id'");
    $querry->bindValue(1,$Type);
    $querry->bindValue(2,$Nom);
    $querry->bindValue(3,$Numéro);
    $querry->bindValue(4,$Prix);
    $querry->bindValue(5,$Site);
    $querry->execute();
    header('location:http://localhost/web/Projet/collection/collection.php');
}
?>
