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
	<div id="content">
         <h1>LE MUR DES IDEES</h1><hr/>
         <form method="post" action="new_compte.php" id="form">
              <label>Prénom & Nom: </label>
              <input type="text" name="nom" required /><br />
              <label>Email: </label>
              <input type="text" name="email" required /><br />
              <label>Mot de passe: </label>
              <input type="password" name="pwd"required  /><br />
              <label>Confirmer le mot de passe: </label>
              <input type="password" name="pwdconf"required  /><br />
              
              <button type="submit" value="Enregistrer" class="btn btn-success">Enregistrer</button>
         </form>
    </div>

</body>

<?php include_once('foot.php'); ?>
</html>