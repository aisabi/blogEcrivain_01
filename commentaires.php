<?php 
  include_once ('_head_episodes.php');
  include_once("_menus.php"); 

  function getBdd() {
  $bdd = new PDO('mysql:host=localhost;dbname=systeme_news;charset=utf8', 'root', 'root');
  return $bdd;
        } 
  $bdd = getBdd();
  $req = $bdd->prepare('SELECT id, auteur, titre, contenu FROM news WHERE id = ?');
  $req->execute(array($_GET['billeto']));
  $donnees = $req->fetch();
    
  function getCommentaires($idBillet) {
    $bdd = getBdd();
    $commentaires = $bdd->prepare('SELECT id, DATE_FORMAT(date_commentaire, \'%d/%m/%Y à %Hh%imin%ss\') AS date_commentaire_fr,auteur, commentaire FROM commentaires WHERE id_billet= ? ORDER BY date_commentaire');
    $commentaires->execute(array($idBillet));
    return $commentaires;
  }    
  $id = $_GET['billeto'];
//var_dump($id);
  $commentaires = getCommentaires($id);
  ?>

<?php ob_start(); ?>
<?php foreach ($commentaires as $commentaire): ?>
  <div class="commentaires"><strong><p id="commentaires"><?= $commentaire['auteur'] ?></strong> le : 
  <?= $commentaire['date_commentaire_fr'] ?> dit :</p>
  <p><?= $commentaire['commentaire'] ?></p>    </div>
<?php endforeach; ?>
<?php $contenu = ob_get_clean(); ?>

    <p style="font-weight:bold; margin-left:1em;margin-top: 1em;"><a button type="button" class="btn btn-primary active" href='episodes.php'> Retour à la liste des épisodes</a></p>
    
    <h1>L'article et vos commentaires !</h1>

    <div class="news">
    <h3>         
     <p>Auteur : <?php echo $donnees['auteur'].'<br/>'; ?></p>
      <p>Titre : <?php echo $donnees['titre']; ?></p>
    </h3>
      <p><?php echo $donnees['contenu']; ?></p>
  </div>
  <hr>
  <h2>Vos Commentaires </h2>
        
          <?php echo $contenu ?> 

<section id="commentaire_section">
      <?php include_once ('_form_commentaire.php'); ?>
</section>   
  
</div>

    <?php include("_pied_de_page.php");?>
  