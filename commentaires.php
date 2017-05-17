<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Billet simple pour l'Alaska</title>
    <link rel="stylesheet" href="css/episodes.css"/> 
     <link href="css/bootstrap.min.css " rel="stylesheet">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  </head>    
  <body>
  <div class="container-fluid">  
        <?php include("menus.php"); ?>
    <h1>L'article et vos commentaires !</h1>
    <p><a href="episodes.php">Retour à la liste des billets</a></p>
        <?php
          function getBdd() {
          $bdd = new PDO('mysql:host=localhost;dbname=systeme_news;charset=utf8', 'root', 'root');
          return $bdd;
        } 
          $bdd = getBdd();
          $req = $bdd->prepare('SELECT id, auteur, titre, contenu FROM news WHERE id = ?');
          $req->execute(array($_GET['billeto']));
          $donnees = $req->fetch();
        ?>
    <div class="news">
    <h3>         
      <p>Auteur : <?php echo htmlspecialchars($donnees['auteur']).'<br/>'; ?></p>
      <p>Titre : <?php echo htmlspecialchars($donnees['titre']); ?></p>
    </h3>
      <p><?php echo htmlspecialchars($donnees['contenu']); ?></p>
  </div>
  <hr>
  <h2>Vos Commentaires </h2>
        <?php
        $req->closeCursor(); // Important : on libère le curseur pour la prochaine requête
        // Récupération des commentaires
        $req = $bdd->prepare('SELECT auteur, commentaire, DATE_FORMAT(date_commentaire, \'%d/%m/%Y à %Hh%imin%ss\') AS date_commentaire_fr FROM commentaires WHERE id_billet = ? ORDER BY date_commentaire');
        $req->execute(array($_GET['billeto']));
        while ($donnees = $req->fetch())
          {
        ?>
    <div class="commentaires">
      <p id="commentaires"><strong><?php echo htmlspecialchars($donnees['auteur']); ?></strong> le <?php echo $donnees['date_commentaire_fr']; ?></p>
      <p><?php echo nl2br(htmlspecialchars($donnees['commentaire'])); ?></p>
    </div>
      <?php
      } // Fin de la boucle des commentaires
    $req->closeCursor();?>
</div>
    <?php include("pied_de_page.php");?>
  </body>
</html>