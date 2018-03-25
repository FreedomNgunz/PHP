<?php
    require_once('connexion.php');

    $connexion = getConnexion();
    $req = "SELECT idee.idcompte,idee.id,compte.nom,idee.message,idee.date
              FROM idee, 
              compte WHERE compte.id = idee.idcompte";

    $data = $connexion->query($req);
    $req2=$connexion->prepare('select count(id) as nombre from aime where id_idee=?');
    while($d = $data->fetch())
    {
        $req2->execute(array($d['id']));
        while($s=$req2->fetch())
        {


       echo '
            <p class="idee">
                <strong>['.$d['nom'].']</strong> : '.$d['message'].' <br />
                <em class="dp">Postée le '.$d['date'].'</em>
                <a href="like.php?id_like='.$_SESSION['id'].'&id_idee='.$d['id'].'">Jaime ('. $s['nombre'].') </a>
            </p>
       ';

        }
    }
 

?>


