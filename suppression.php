<?php 

$bdd = new PDO('mysql:host=localhost;dbname=systeme_news','root','root');

if (isset($_GET['id'])){
	$id = $_GET['id'];
	//$sql = "DELETE FROM movies WHERE id =:id";
	//$sql = "DELETE FROM news WHERE id =?";
	$sql = "DELETE FROM news WHERE id =?";
	$stmt = $bdd->prepare($sql);
	//$stmt->bindParam(':id', $_POST['id'],PDO::PARAM_INT );
	//$stmt->bindParam(':id', $id,PDO::PARAM_INT);
	//$stmt->execute();   
	$stmt->execute(array($id));

//$requete_sql="DELETE FROM ".$TABLEPERSONNES." WHERE ID=:ID";
//$RequetePreparee = $bdd->prepare($requete_sql);
//$RequetePreparee->bindParam(':ID', $ID,PDO::PARAM_INT);

}
//$RequetePreparee->execute(); // Exécution
//var_dump($_GET);

header('Location:index.php');