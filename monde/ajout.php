<?php
    session_start();

    if(!isset($_SESSION['email'])){
        header('location:../utilisateur/login.html');
    }
    
?>

<?php
    if(isset($_POST["ajout"])){
        include_once("connexion.php");
        $Nom=$_POST["Nom"];
        $Localisation=$_POST["Localisation"];
    }
    $st=$conn->prepare("INSERT INTO monde(Nom,Localisation)VALUES(?,?)");
    $st->bindValue(1,$Nom);
    $st->bindValue(2,$Localisation);
    
    $st->execute();
    header('location:http://localhost/web/Projet/monde/monde.php');
?>