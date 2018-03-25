<?php
     require_once('connexion.php');

     if(isset($_GET['id_like'], $_GET['id_idee']))
     {

        $connexion = getConnexion();

         $connexion = getConnexion();

         $req = "INSERT INTO aime VALUES(null, :iduser, :id_idee)";
         $prepare = $connexion->prepare($req);

         $resultat = $prepare->execute(array(
             'iduser'=>$_GET['id_like'],
             'id_idee'=>$_GET['id_idee']
         ));


           
           
       // echo "Session".$_GET['id_like'];
        //echo "Session".$_GET['id_idee'];
         header('Location: mur.php');
     }
     else
     {
         echo 'Erreur dans les données';
     }

  ?>