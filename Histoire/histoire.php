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
<title>Histoire</title>

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
        L'histoire de One Piece
    </h1>
  </tbody>
</html>
<?php
require_once("connexion.php");
$st=$conn->prepare("SELECT * FROM one_piece");
$st->execute();
$result=$st->fetchAll(PDO::FETCH_ASSOC);
?>
<html >
    <div class="container">
    <form action="./formAjout.php" method="POST" enctype="multipart/form-data">
    <input type="submit" name="ajout" value="Ajouter un arc de One Piece" style="background:rgb(211,215,218,0.75)">
    </form>
    </div>

<table class="table" >
    <tr>
      <th scope="col">Arc</th>
      <th scope="col">Manga</th>
      <th scope="col">Anime</th>
      <th scope="col">Modifier</th>
      <th scope="col">Voir Plus</th>
    </tr>
    <thead>
    <?php foreach($result as $row){
        ?>
    
    </thead>
    <tr>
      <td><?php echo $row["Arc"]?></td>
      <td><?php echo $row["Manga"]?></td>
      <td><?php echo $row["Anime"]?></td>
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
      <td>
      <div class="btn-group" role="group" aria-label="Basic example">
            <a href="#"><button type="button" class="btn btn-info">Voir plus</button>
          </div>
      </td>    
      
    </tr>
    <?php
    }
    ?>
</table>
<div class="card text-white bg-secondary mb-3" style="max-width: 50rem;left:350px; text-align: center;">
  <div class="card-header" style="color:#000000"><strong>Arc Romance Dawn </strong></div>
  <div class="card-body">
      <p>L'histoire commence dans le village de Fuschia dans la mer d'East Blue, où l'on rencontre <a href="#" style="color:#000000">Monkey D Luffy.</a></p><p>Son rêve est de devenir le roi des pirates.</p>
      <p>On y retrouve aussi un pirate qui porte le nom de <a href="#" style="color:#000000">Shanks le Roux</a> qui est le "mentor" de Luffy.</p>
      <p>C'est à ce moment-là qu'il mange un fruit du démon, le <a href="#" style="color:#000000">Fruit du Gum Gum</a>.</p>
      <p>À son départ du village, Shanks donne son chapeau de paille à Luffy. C'est ce chapeau qui deviendra son emblème.</p>
      <p>10 ans après, Luffy part à l'aventure. Son premier adversaire sera une pirate appelée <a href="#" style="color:#000000">Alvida la massue</a>. Lors de ce passage, Luffy rencontrera Coby, un jeune garçon qui rêve de devenir un haut gradé de la Marine.</p>
      <p>À la suite de ce combat, il rencontrera sur une nouvelle île, avec l'aide de <a href="#" style="color:#000000">Coby</a>, <a href="#" style="color:#000000">Roronoa Zoro</a>, un chasseur de prime qui deviendra le premier membre de l'équipage de Luffy et qui veut devenir le meilleur épéiste au monde. Avec l'aide de Zoro, il devra battre le colonel de la Marine <a href="#" style="color:#000000">Morgan</a> qui tyranise les habitants de l'ile</p>
  </div>
</div>

<div class="card text-white bg-secondary mb-3" style="max-width: 50rem;left:350px; text-align: center;">
  <div class="card-header" style="color:#000000"><strong>Arc Baggy le Clown</strong></div>
  <div class="card-body">
<p>Au début de ce deuxième arc, Luffy et Zoro croise la route d'une voleuse nomée <a href="#" style="color:#000000">Nami</a>. Elle les rejoindra pour obtenir leur aide.</p>
<p>Avec son aide, ils vont devoir battre un pirate qui porte le nom de <a href="#" style="color:#000000">Baggy le Clown</a> pour récupérer la carte de <a href="#" style="color:#000000">Grand Line</a>.</p>
</div>
</div>

<div class="card text-white bg-secondary mb-3" style="max-width: 50rem;left:350px; text-align: center;">
  <div class="card-header" style="color:#000000"><strong>Arc Capitaine Kuro</strong></div>
  <div class="card-body">
<p>Dans ce 3ème arc, nos trois pirates vont faire la rencontre de leur nouveau compagnion, <a href="#" style="color:#000000">Ussop</a>.</p>
<p>Ils vont devoir se battre pour empecher l'invasion de l'ile d'Ussop par le <a href="#" style="color:#000000">Capitaine Kuro</a>.</p>
</div>
</div>

<div class="card text-white bg-secondary mb-3" style="max-width: 50rem;left:350px; text-align: center;">
  <div class="card-header" style="color:#000000"><strong>Arc Baratie</strong></div>
  <div class="card-body">
<p>Dans cet arc, on retrouve Luffy, Zoro, Nami et Ussop à bord d'un navire restaurant, le Baratie où ils rencontrent Sanji, un cuisinier d'execption qui veut découvrir All Blue, une mer qui regroupe tout les poissons du monde.</p>
<p>De retour de Grand Line grand perdant, Don Krieg cherche un nouveau bateau et prend pour cible le Baratie.</p>
<p>Avec l'aide des chapeaux de pailles, Sanji et les autres cuisinier vont se battre pour sauver leur restaurant.</p>
<p>Mais le Grand Corsair, Oeil de Faucon, a suivit Don Krieg en sortant de Grand Line. Un nouvel ennemi apparait alors pour Zoro car Oeil de Faucon est considéré comme le meilleur épéiste au monde.</p>
</div>
</div>














<center><a href="#Haut_de_page">Haut_de_page </a></center>
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

