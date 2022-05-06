<?php
    $servername = '127.0.0.1';
    $username = 'root';
    $password = '';
    $dbname = "projetweb";


    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);

        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      //  echo 'Connexion réussie';



    } catch (PDOException $e) {
        echo "Erreur : " . $e->getMessage();
    }