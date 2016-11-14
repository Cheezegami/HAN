<?php
session_start();
require 'functies/connection.php'; 
require 'functies/functies.php';

$inlognombre = "'".$_POST['inlognaam']."'";
$wachtwoord = "'".$_POST['Wachtwoord']."'";

$Query = "SELECT *
FROM	LOGINGEG
WHERE naam = ".$inlognombre." and password = ".$wachtwoord."";
$Result = sqlsrv_query($db,$Query, null);
$row = sqlsrv_fetch_array($Result, SQLSRV_FETCH_ASSOC );
if(isset($_POST['inlognaam']) && isset($_POST['Wachtwoord'])){
    if(!is_null($row))
    {
            $_SESSION['inlognaam'] = $_POST['inlognaam'];
            $url = "index.php";
       
    }
    else
    {
	   echo'foute invoer';
	   session_destroy();
	   $url = "index.php";
    }
    header('Refresh: 0; URL = '.$url);
}
else{header('Refresh: 0; URL = '."overons.php");}


?>