<?php
    session_start();

    if(!isset($_SESSION['email'])){
        header('location:../utilisateur/login.html');
    }
    
?>
<!DOCTYPE html>
<html lang="fr">
<head>
<link rel="icon" type="image/png" href="../image/crane.png" />
<title>Collection</title>
<style>
  body {
  background-attachment: fixed;
  }
  table{
    background-color:rgb(211,215,218,0.75);
    
  }
  </style>
</head>
<body background="../image\One_Piece_Menu.jpg">
    <?php
        require_once("./index.php");
    ?>
    <h1 id="Haut_de_page" style="text-align: center;">
        Le Monde de One Piece
    </h1>
  </tbody>
</html>
<?php
require_once("connexion.php");
$st=$conn->prepare("SELECT * FROM monde ");
$st->execute();
$result=$st->fetchAll(PDO::FETCH_ASSOC);
?>
<html>
    <div class="container">
    <form action="./formAjout.php" method="POST" enctype="multipart/form-data">
    <input type="submit" name="ajout" value="Ajouter un endroit du Monde">
    </form>
    </div>

<table class="table">
    <tr>
      <th scope="col">Nom</th>
      <th scope="col">Localisation</th>
      <th scope="col">Modifier</th>
    </tr>
    <thead>
    <?php foreach($result as $row){
        ?>
    
    </thead>
    <tr>
    <td><?php echo $row["Nom"]?></td>
      <td><?php echo $row["Localisation"]?></td>
      <td><div class="btn-group" role="group" aria-label="Basic example">
            <?php
              if(isset($_SESSION['role']) && $_SESSION['role'] =='membre'){
        
                ?>
                <button onclick="myFunction()" type="button" class="btn btn-info" >Modifier</button>

                <script>
                function myFunction() {
                  alert("Vous ne pouvez pas modifier cette partie");
                }
                </script>
        
                <?php
            }
            else{
            ?>
              <a href="./formModif.php?modifid=<?php echo $row['id']?>"><button type="button" class="btn btn-info">Modifier</button>
            <?php
            }
            ?>
          </div>
      </td>   
      
    </tr>
    <?php
    }
    ?>
</table>
<footer class="global-footer" >
  <div class="global-footer__content" >
    <div class="card text-center" style="background-color:rgb(211,215,218)">
      <div class="card-header">
        <h3 class="card-title">Tout Savoir sur One Piece</h3>
      </div>
      <div class="card-body" >
        <h5 class="card-title" >Projet développement Web avancé en 3ème année d'école d'ingénieur à l'ESIEA, en semestre à l'internationnal à l'EPI Sousse.</h5>
        <p class="card-text">Coordonnées:</p>
        <p class="card-text">Mail : pierrickgraton@gmail.com</p>
        <p class="card-text">Téléphone : +33 6 26 60 12 75</p>
      </div>
      <div class="card-footer text-muted">
         Copyright &#169; Pierrick Graton
      </div>
    </div>
  </div>
</footer>
</html>

