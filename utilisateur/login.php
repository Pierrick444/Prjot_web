
<?php
require("connexion.php");
session_start();
    if(isset($_POST["login"])){
        $email=$_REQUEST['email'];
        $password=$_REQUEST['password'];
        $pass_hash=hash('sha256',$password);
        $query=$conn->prepare("SELECT * FROM utilisateur WHERE email='$email' AND password='$pass_hash'");
        $query->execute();

        $result=$query->fetchAll(PDO::FETCH_ASSOC);
        //print_r($result);
        if(count($result)>0){
             $_SESSION['email']=$result[0]["email"];
             $_SESSION['role']=$result[0]["role"];
            header('location:http://localhost/web/Projet/menu.php');
        }
        else{
            echo "le mail ou le mot de passe est faux.";
        }
    }

?>