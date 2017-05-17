<!DOCTYPE HTML>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Billet simple pour l'Alaska</title>
     <link href="css/bootstrap.min.css " rel="stylesheet">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <link rel="stylesheet" href="css/episodes.css"/>  
   </head>
   <body>
     <div class="container-fluid">  
        <?php include("menus.php"); ?>  
    <?php 
      function getBdd() {
          $bdd = new PDO('mysql:host=localhost;dbname=systeme_news;charset=utf8', 'root', 'root');
          return $bdd;//oublié le return ! 
                }

      function get_list() {
          $bdd = getBdd(); 
          $episodes = $bdd->query('SELECT id, auteur,titre, contenu FROM news ORDER BY id desc LIMIT 0, 5')->fetchAll();
      //var_dump($episodes);
          return $episodes;
      }
      $news_list = get_list();//récupération des news via la fonction get_list()
    ?>

<section id="list_episodes">
  <table class="table">
      <tr>    
        <th>Id</th>
        <th>Auteur</th>
        <th>Titre</th>
        <th>Contenu</th>
        <th>Commentaires</th>
      </tr>

      <?php foreach ($news_list as $new): ?>
      <tr>
        <td><h3><?php echo $new['id']?></h3></td>
        <td><h3><?php echo $new['auteur']; ?></h3></td>
        <td><h3><?php echo $new['titre']; ?></h3></td>
        <td><p><?php echo substr ($new['contenu'],0,200).'...'; ?></p></td>
        <td> <em><a href="commentaires.php?billeto=<?php echo $new['id']; ?>">Commentaires</a></em></td>
      </tr>
      <?php endforeach;?>
   </table>
 </section>

      </div>
      <?php include ("pied_de_page.php");?>  

   </body>
</html>