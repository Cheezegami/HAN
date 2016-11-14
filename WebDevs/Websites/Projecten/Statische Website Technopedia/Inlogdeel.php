<?PHP
session_start();

if (isset($_SESSION['inlognaam']))
{
    echo '
    <div id = "Inlogdeel">
					<div>
						welkom '. $_SESSION['inlognaam']. '
                        <a href = "Loguit.php"> klik hier om uit te loggen</a>
					</div>
				
			</div>
            ';
}

else
{
    echo '
    <div id = "Inlogdeel">
    
					<div>
                    <form action = "LoginActie.php" method = "post">
						Gebruikersnaam:<br>
						<input type= "text" name = "inlognaam"><br>
						Wachtwoord:<br>
						<input type= "password" name = "Wachtwoord"><br>
						<input type = "submit" name = "verstuur" value = "Log in">
					</div>
					<div>
						<a href="">Wachtwoord vergeten?</a>
					</div>
				<a href="Registratiescherm.php">Registreer</a>
                </form>
			</div>
    
    ';
}
?>