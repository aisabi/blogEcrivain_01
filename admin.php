<?php 
  function getBdd() //mettre dans un fichier pour faire un include
  {
    $bdd = new PDO('mysql:host=localhost;dbname=systeme_news;charset=utf8', 'root', 'root');
       return $bdd;//oublié le return ! 
     }

  function get_list() {
  $bdd = getBdd();
    $episodes = $bdd->query('select id, auteur,titre,contenu from news ORDER BY id desc')->fetchAll();
  //var_dump($episodes);
    return $episodes;
  }

  $news_list = get_list(); // je récupère les news grace à la fonction du modele. 

    include_once ('_head_admin.php');
 ?>

 <p style="font-weight:bold; margin-left:3em;margin-top: 1em;"><a button type="button" class="btn btn-primary active" href='.'>Accéder à l'accueil du site</a></p>

    <?php // /../vue/admin.php ?>
    <!--Formulaire ajout + Tiny-->
  <form action="ajoutEpisode.php" method="post">
      <p style="text-align: center">
      Auteur:<input type="text" name="auteur" size="20"/><br/> 
      Titre:<input type="text" name="titre" size="30"/><br/> 
          Contenu :<br /><textarea rows="10" cols="60" name="contenu"><?php ?></textarea><br />

      <input type="submit" value="Valider" />
      <input type="reset" value="Effacer le formulaire" /> 
    </p>
  </form>
  <p style="text-align: center">Liste des épisodes A : </p> 

 <div class="container-fluid"> 
 <section id="liste_episodes_admin">
 <table class="table">
        <tr>
            <th>Edit</th>
            <th>Id</th>
            <th>Auteur</th>
            <th>Titre</th>
            <th>Modifier</th>
            <th>Delete</th>
            
        </tr>
        <?php foreach ($news_list as $new): ?> 
          <tr>
            <td><a href="#">Edit</a></td>
            <td><?php echo $new['id'] ?></td>
            <td><?php echo $new['auteur'] ?></td>
            <td><?php echo $new['titre'] ?></td>
            <td><a href="modification.php?id=<?php echo $new['id']; ?>">modifier</td>
            <td><a href="suppression.php?id=<?php echo $new['id']; ?>">supprimer</td> 
            
         </tr>
        <?php endforeach ; ?>
   </table>
</section>
</div>
    </body>
</html>
 