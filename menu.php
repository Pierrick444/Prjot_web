<?php
    session_start();
?>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="./image/crane.png" />
<title>Home</title>
  <link rel="stylesheet" href="menu.css">

  <style>
  body {
  background-attachment: fixed;
  }
  h1 {
    color: rgb(0,0,0);
    text-align: center;
  }
  </style>

</head>
<body>
<body background="image\One_Piece_Menu.jpg" >
    <?php
        require_once("./index.php");
        
    ?>
   
    <h1 id="Haut_de_page">
        Tout savoir sur One piece 
    </h1>
    <br>
    <br>
    
</body>
<div class="card text-white bg-secondary mb-3" style="max-width: 50rem;left:350px; text-align: center;">
  <div class="card-header"><strong>Qu'est ce que One Piece ??? </strong></div>
    <div class="card-body">
    <p>One Piece est une série manga commencée en 1997 par <a href="#Oda" style="color:#000000">Eiichiro Oda</a>. </p>
    <p>Edité par la <a href="#shueisha" style="color:#000000">Shueisha</a> au Japon et par <a href="#glenat" style="color:#000000">Glénat</a> en France ce manga est devenu de plus en plus connu dans le monde pour devenir un des livres les plus vendu au monde avec 500 milions d'exemplaires vendus.</p>
    <p> Encore en travail aujourd'hui, One Piece a atteint la barre symbolique des 100 <a href="./Histoire\histoire.php" style="color:#000000">tomes</a> et possède un <a href="./Histoire\histoire.php" style="color:#000000">anime</a> avec plus de 1000 épisodes. </p>
    <p>Il existe aussi de nombreux films et jeux vidéos tournant autour du monde de One Piece.</p>
    </div>
  </div>
</div>
<br>
<br>
<br>
<br>
<br>


<div class="card text-white bg-secondary mb-3" style="max-width: 30rem;left:350px; text-align: center;">
<img src="image/Eiichiro-Oda-One-Piece-1.jpg" class="card-img-top">
  <div class="card-header"><strong>Eiichiro Oda </strong></div>
  <div class="card-body" id="Oda">
    <p>Eiichiro Oda est un mangaka Japonais né à Kumamoto en 1975. </p>
    <p>Il tient son inspiration des vikings et des pirates pour créer son manga One Piece.</p>
    <p>Il est aujourd'hui un pilier du genre Shonen au même titre qu'Akira Toriyama, l'auteur de Dragon Ball.</p>
  </div>
</div>

  <div class="card text-white bg-secondary mb-3" style="max-width: 30rem;left:350px; text-align: center;">
      <img src="image/shueisha.png" class="card-img-top" >
        <div class="card-header"><strong>La Shueisha </strong></div>
          <div class="card-body" id="shueisha">
            <p>La Shueisha est une maison d'édition Japonaise. </p>
            <p>Elle est très connu au Japon grâce à son magazine hebdomadaire le "Weekly Shonen Jump".</p>
            <p>C'est dans ce magazine que Dragon Ball, Naruto, Bleach et One Piece ont vu le jour.</p>
          </div>
        </div>
  </div>


    <div class="card text-white bg-secondary mb-3" style="max-width: 30rem;left:350px; text-align: center;">
      <img src="image/glenat.png" class="card-img-top" >
        <div class="card-header"><strong>Glénat </strong></div>
          <div class="card-body" id="glenat">
            <p>Glénat est la maison d'édition française qui gère One Piece en France.</p>
            <p>C'est elle qui gère les traduction et parution des tomes de One Piece</p>
          </div>
        </div>
    </div>

<br>
<br>
<br>
<br>
<br><br>
<br>
<br>
<br>
<br>
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
