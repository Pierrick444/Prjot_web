<?php
    session_start();

    if(!isset($_SESSION['email'])){
        header('location:../utilisateur/login.html');
    }
    
?>
<?php
    if(isset($_POST["ajout"])){
        include_once("connexion.php");
        $st=$conn->prepare("INSERT INTO one_piece (arc,manga,anime)VALUES(?,?,?)");
        $st->bindValue(1,$_REQUEST["arc"]);
        $st->bindValue(2,$_REQUEST["manga"]);
        $st->bindValue(3,$_REQUEST["anime"]);
        $st->execute();
        header('location:http://localhost/web/Projet/Histoire\histoire.php');
    }

?>