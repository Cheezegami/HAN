<?PHP
$isFout = FALSE;
include 'functies/functies.php';
require 'functies/connection.php'; 
$invoer = array($_POST['gebruikersnaam'], $_POST['wachtwoord'], $_POST['herhaal_wachtwoord']);
$gebruikersnaam = "'".$_POST['gebruikersnaam']."'";
$wachtwoord ="'".$_POST['wachtwoord']."'";
$herhaal_wachtwoord = "'".$_POST['herhaal_wachtwoord']."'";
foreach($invoer as $i => $key)
{
	valideerInvoer($key);
}
valideerPostcode($_POST['postcode']);
valideerWachtwoord();

if($isFout == TRUE || !isset($_POST['no-robot'])){
	$url = "Registratiescherm.php";
}
else
{
	$sql = "INSERT INTO LOGINGEG(NAAM, PASSWORD) VALUES($gebruikersnaam,$wachtwoord)";
	$result = sqlsrv_query($db, $sql);
	$url = "index.php";
}
header('Refresh: 0; URL = '.$url);