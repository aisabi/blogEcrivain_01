  <?php   include_once ('_head_admin.php');

  $bdd = new PDO('mysql:host=localhost;dbname=systeme_news', 'root', 'root');
// si l'utilisateur a soumis le formulaire. 
//id, auteur,titre,contenu
  if ('POST' === $_SERVER['REQUEST_METHOD']) {
  $sql = "UPDATE news SET auteur =:auteur,
                          titre =:titre,
                          contenu =:contenu 
                          WHERE id =:id";
  $stmt = $bdd->prepare($sql);
  $stmt->bindParam(':auteur', $_POST['auteur'], PDO::PARAM_STR);
  $stmt->bindParam(':titre', $_POST['titre'], PDO::PARAM_STR);
  $stmt->bindParam(':contenu', $_POST['contenu'], PDO::PARAM_STR);
  $stmt->bindParam(':id', $_GET['id'], PDO::PARAM_INT);   
  $stmt->execute();
}

$episodes = $bdd->query
('SELECT id,auteur,titre,contenu from news WHERE id='.$_GET['id']);
  $new = $episodes->fetch();

 ?>

<p style="font-weight:bold; margin-left:3em;margin-top: 1em;"><a button type="button" class="btn btn-primary active" href='.'>Accéder à l'accueil du site</a></p>

    <form action="#" method="post">
    	   <p style="text-align: center">
    	    Auteur:<input type="text" name="auteur" size="20" value="<?php echo $new['auteur']; ?>"/><br/>
    	    Titre : <input type="text" name="titre" size="30" value="<?php echo $new['titre']; ?>" /><br/>
    	           
           Contenu :<br/><textarea rows="10" cols="60" name="contenu"> <?php echo $new['contenu']; ?></textarea>
    <br/>
    			<input id = "valider" type="submit" value="Valider" />
         <!-- $("valider").click(function(){"La modification a été effectuée !"
          }); -->
    			<input type="reset" value="Effacer le formulaire" />
    		</p>
    </form>
	</body>
</html>