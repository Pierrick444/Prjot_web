<?php
    session_start();

    if(!isset($_SESSION['email'])){
        header('location:../../utilisateur/login.html');
    }
    
?>
<?php
    if(isset($_POST["ajout"])){
        include_once("connexion.php");
        $nom=$_POST["nom"];

        $imageName=basename($_FILES["image"]["name"]);
        $target_dir="../../image/";
        $image = $target_dir.$imageName;
        $image_tmp_name=$_FILES["image"]["tmp_name"] ;
        move_uploaded_file($image_tmp_name,$image); 
        
        $appartenance=$_POST["appartenance"];
    
    
    }
    $st=$conn->prepare("INSERT INTO autre(nom,image,appartenance)VALUES(?,?,?)");
    $st->bindValue(1,$nom);
    $st->bindValue(2,$imageName);
    $st->bindValue(3,$appartenance);
    
    $st->execute();
    header('location:http://localhost/web/Projet/personnage/autre/autre.php');
?>