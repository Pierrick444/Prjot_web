<?php
    if(isset($_POST["s'inscrire"])){
        include_once("connexion.php");
        $st=$conn->prepare("INSERT INTO utilisateur (Nom,Prenom,email,password)VALUES(?,?,?,?)");
        $st->bindValue(1,$_REQUEST["nom"]);
        $st->bindValue(2,$_REQUEST["prenom"]);
        $st->bindValue(3,$_REQUEST["email"]);
        $st->bindValue(4,hash('sha256',$_REQUEST["password"]));
        $st->execute();
        header('location:http://localhost/web/Projet/utilisateur/login.html');
    }

?>