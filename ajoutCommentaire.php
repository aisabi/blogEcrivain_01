<?php 
//echo '<pre>'; print_r($_REQUEST);exit;
function getBdd() {//fonction Connexion
     $bdd = new PDO('mysql:host=localhost;dbname=systeme_news;charset=utf8', 'root', 'root');
        return $bdd; 
     }
     $bdd = getBdd();

$req = $bdd->prepare('INSERT INTO commentaires (id_billet,auteur, commentaire,date_commentaire) VALUES(?,?, ?,NOW())');
//INSERT INTO commentaires (id_billet,auteur, commentaire) VALUES(31,"Pierre","ceci est un commentaire") 
$req->execute(array($_POST['id'],$_POST['auteur'], $_POST['commentaire']));

if(isset($_POST["submit_commentaire"])){
if(!empty($_POST['auteur'])&& !empty($_POST['commentaire'])){
		// == On récupère les données == 
  $auteur = $_POST['auteur'] ; 
  $commentaire = $_POST['commentaire'];
  $id = $_POST['id'];
  $message = "<span style='color:green'>Votre commentaire a été ajouté !</span>";
  
  include_once ('_head_episodes.php');
?>

 <p style="font-weight:bold; margin-left:3em;margin-top: 1em;"><a button type="button" class="btn btn-primary active" href='episodes.php'>Retour à la liste des épisodes</a></p>

<section id="commentaire_post">
    <table class="table">
      <tr>
        <th>Id</th>
        <th>Votre pseudo</th>
        <th>Votre commentaire</th>
      </tr>
	
	  <?php echo '<tr>';
	      echo '<td>'.$id.'</td>';
	      echo '<td>'.$auteur.'</td>';
	      echo '<td>'.$commentaire.'</td>';
	      echo '</tr>'; 
	     }
	   }
	  ?>
  </table>
        <span><?php echo $message; ?> </span>
</section>

       <!-- Fin du programme -->