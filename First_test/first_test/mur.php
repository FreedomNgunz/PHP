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
	<div id="content">
         <?php
             include_once('head.php');
         ?>
         <h3>Voici la liste de toutes les idées déjà postées</h3>
         <?php
             include('liste_idee.php');
         ?>
    </div>


</body>
<?php include_once('foot.php'); ?>
</html>