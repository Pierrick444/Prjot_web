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
    nom:<input type="text" name="Nom" required>
    <br>
    utilisateur:<input type="text" name="Utilisateur" required>
    <br>
    type:<input type="text" name="Type" required>
    <br>
    pouvoir:<input type="text" name="Pouvoir" required>
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
    $Utilisateur=$_POST["Utilisateur"];
    $Type=$_POST["Type"];
    $Pouvoir=$_POST["Pouvoir"];
    $querry=$conn->prepare("UPDATE fdd SET Nom=?,Utilisateur=?, Type=?, Pouvoir=? WHERE id='$id'");
    $querry->bindValue(1,$Nom);
    $querry->bindValue(2,$Utilisateur);
    $querry->bindValue(3,$Type);
    $querry->bindValue(4,$Pouvoir);
    $querry->execute();
    header('location:./fdd.php');
}
?>
