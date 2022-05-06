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
        $Utilisateur=$_POST["Utilisateur"];
        $Type=$_POST["Type"];
        $Pouvoir=$_POST["Pouvoir"];
    
    
    }
    $st=$conn->prepare("INSERT INTO fdd(Nom,Type,Utilisateur,Pouvoir)VALUES(?,?,?,?)");
    $st->bindValue(1,$Nom);
    $st->bindValue(2,$Type);
    $st->bindValue(3,$Utilisateur);
    $st->bindValue(4,$Pouvoir);
    
    $st->execute();
    header('location:http://localhost/web/Projet/fdd/fdd.php');
?>