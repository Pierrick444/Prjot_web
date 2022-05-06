<?php
    session_start();

    if(!isset($_SESSION['email'])){
        header('location:../utilisateur/login.html');
    }
    
?>

<?php
    if(isset($_POST["ajout"])){
        include_once("connexion.php");
        $Type=$_POST["Type"];
        $Nom=$_POST["Nom"];
        

        $imageName=basename($_FILES["Image"]["name"]);
        $target_dir="../image/";
        $image = $target_dir.$imageName;
        $image_tmp_name=$_FILES["Image"]["tmp_name"] ;
        move_uploaded_file($image_tmp_name,$image); 
        
        $Numéro=$_POST["Numéro"];
        $Prix=$_POST["Prix"];
        $Site=$_POST["Site"];
    
    
    }
    $st=$conn->prepare("INSERT INTO collection(Type,Nom,Image,Numéro,Prix,Site)VALUES(?,?,?,?,?,?)");
    $st->bindValue(1,$Type);
    $st->bindValue(2,$Nom);
    $st->bindValue(3,$imageName);
    $st->bindValue(4,$Numéro);
    $st->bindValue(5,$Prix);
    $st->bindValue(6,$Site);
    
    $st->execute();
    header('location:http://localhost/web/Projet/collection/collection.php');
?>