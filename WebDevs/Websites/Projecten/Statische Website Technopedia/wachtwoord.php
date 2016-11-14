<!DOCTYPE html>
<html>
	<head>
		<title>Website</title> <!-- Displayed page name on tab -->
		<meta charset="utf-8" /> <!-- uses the utf-8 character set to encode the characters -->
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" /> <!-- further specifies the characters and content used -->
		<meta name="viewport" content="width=device-width, initial-scale=1" /> <!-- usability for mobile devices -->
		<link rel="stylesheet" type="text/css" href="style.css">
  </head>
  <body>
	<?PHP include 'bovenkant.php' ?>
    <div class = Content>
			<div class = "HoofdVak">
	<h2>Bent u uw wachtwoord vergeten?</h2>
	<h3>Vul hieronder uw gebruikersnaam en email in en dan zullen wij uw wachtwoord naar uw email adress toesturen.</h3>
	<table>
	<tr>
		<td>
			<div id = "Accountgegevens">
				<table>
					<tr>
						<td>Gebruikersnaam:	</td><td> <input type="text" name= "gebruikersnaam" ></td>
					</tr>
					<tr>
						<td>Email: </td><td><input type="text" name = "e-mail"></td>
					</tr>
                    <tr>
						<td>Ik ben geen robot: </td><td><input type="checkbox" name = "no-robot"></td>
					</tr>
				</table>
			</div>
		</td>
	</tr>
</table>
<div class = "Footer">
	<input type="submit" value="Verstuur">
</div>
</div>
		</div>
  </body>
</html>
