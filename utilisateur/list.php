<?php
    include_once("connexion.php");
    include_once("navbar.html");
    session_start();
    $st=$conn->prepare("SELECT * FROM utilisateur");
    $st->execute();
?>
    <h1>Bonjour <?php echo $_SESSION["Prenom"]?> </h1>

    <table class="table">
        <tr>
            <th scope="col">Nom</th>
            <th scope="col">Nom</th>
            <th scope="col">email</th>
            <th scope="col">password</th>

        </tr>
    </table>