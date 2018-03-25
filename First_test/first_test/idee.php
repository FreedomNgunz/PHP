<?php
     require_once('check_connexion.php');
  ?>
<!DOCTYPE html>
<html>
  <head>
  	<title>Home</title>
  	<meta charset="utf-8" />
    <link rel="stylesheet" href="static/css/style.css" />

            <!-- Lien avec le framework de boostrap -->

        <link href="default.css" rel="stylesheet" type="text/css" media="all" />
        <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="css/js/jquery-1.11.3.min.js"></script>
        <script src="bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="style.css">
  </head>
  <body>
  	<div id="content" class="container" style="margin-top: 50px;">
         <?php
             include_once('head.php');
         ?>
         <p>
             
             <em>Poster ici toutes les idées les plus folles que vous avez
!!!</em>
             <img src="" alt="" />
         </p>
         <form method="post" action="new_idee.php">
              <?php
                  echo '
                      <input type="hidden" name="idcompte"
value="'.$_SESSION['id'].'" />
                    ';
              ?>
              <label>Nouvelle idée: </label><br />
              <textarea name="message"required ></textarea><br />
              <button type="submit" value="Poster" class="btn btn-success">Poster</button>
          </form>
    </div>


  </body>
  <?php include_once('foot.php'); ?>
</html>