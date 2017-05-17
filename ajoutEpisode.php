<p><a href="../admin">Retour à la liste des billets</a></p>
<?php 

function getBdd() {//fonction Connexion
     $bdd = new PDO('mysql:host=localhost;dbname=systeme_news;charset=utf8', 'root', 'root');
        return $bdd; 
     }
     $bdd = getBdd();

$req = $bdd->prepare('INSERT INTO news (auteur, titre,contenu) VALUES(?, ?,?)');

$req->execute(array($_POST['auteur'], $_POST['titre'], $_POST['contenu']));
?>

<?php
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
?>
		<?php  echo $auteur.'<br/>';?>
		<h1> <?php echo $titre.'<br/>';?></h1> 
		<?php echo $contenu.'<br/>';

		}
?>
       <!-- Fin du programme -->