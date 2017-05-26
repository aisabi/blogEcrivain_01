<?php 
function getBdd() {//fonction Connexion
     $bdd = new PDO('mysql:host=localhost;dbname=systeme_news;charset=utf8', 'root', 'root');
     return $bdd; 
     }
     $bdd = getBdd();

$req = $bdd->prepare('INSERT INTO news (auteur, titre,contenu) VALUES(?, ?,?)');
$req->execute(array($_POST['auteur'], $_POST['titre'], $_POST['contenu']));

if(!empty($_POST['auteur'])&& !empty($_POST['titre'])&& !empty($_POST['contenu'])){
		// == On récupère les données == 
	$auteur = $_POST['auteur'] ; 
	$titre = $_POST['titre'];
	$contenu = $_POST['contenu'] ;
		?>
		<?php
		// == On traite les données == // -- Conversion en majuscules --
		//$auteur = strtoupper($auteur) ;//$titre = strtoupper($titre);
		// == On affiche les données ==
		//echo 'Nom : '.$auteur.'<br/>';
	$message = "<span style='color:green'> L'épisode a été ajouté !</span>";
    include_once ('_head_episodes.php');
?>
<p style="font-weight:bold; margin-left:3em;margin-top: 1em;"><a button type="button" class="btn btn-primary active" href='episodes.php'>Retour à la liste des épisodes</a></p>

<section id="episode_post">
    <table class="table">
      <tr>
        <th>Auteur</th>
        <th>Titre</th>
        <th>Contenu</th>
      </tr>
	
	  <?php echo '<tr>';
	      echo '<td>'.$auteur.'</td>';
	      echo '<td>'.$titre.'</td>';
	      echo '<td>'.$contenu.'</td>';
	      echo '</tr>'; 
	     }   
	  ?>
  </table>
        <span><?php echo $message; ?> </span>
</section>

	
       <!-- Fin du programme -->