<!DOCTYPE html>
<html>
	<?PHP include 'header.php' ?>
  <body>
	<?PHP include 'bovenkant.php' ?>
    <div class = Content>
			<div class = "HoofdVak">
	<h1>Registreren</h1>
	<h2>Vul uw gegevens in</h2>
	<table>
	<tr>
		<th> Accountgegevens </th>
		<th> Factuurgegevens </th>
	</tr>
        <Form action = "RegistratieActie.php" method = "post">
	<tr>
		<td>
			<div id = "Accountgegevens">
				<table>
					<tr>
					 <td>Gebruikersnaam:	</td><td> <input type="text" pattern = "[A-Za-z09_]{0,30}"name= "gebruikersnaam" required ></td>
					</tr>
					<tr>
					 <td>Wachtwoord: </td><td><input type="password" pattern = "[A-Za-z09_]{0,30}" name = "wachtwoord" required></td>
					</tr>
					<tr>
				   <td>Herhaal Wachtwoord: </td><td><input type="password" pattern = "[A-Za-z09_]{0,30}" name="herhaal_wachtwoord" required></td>
					</tr>
          <tr>
					 <td>E-mail adres: </td><td><input type="text" pattern = "[A-Za-z0-9_@.]{0,50}" name="emailadres" required></td>
					</tr>
          <tr>
					 <td>Ik ben geen robot: </td><td><input type="checkbox" name = "no-robot" required></td>
					</tr>
				</table>
			</div>
		</td>
		<td>
			<div id = "Factuurgegevens">
				<table>
					<tr>
						<td colspan = 2>
					<select>
						<option VALUE = "Dhr."> Dhr.</option>
						<option value = "Mvr.">Mvr.</option>
					</select>
				</td>
				</tr>
				<tr>
					<td>Voornaam:	</td><td> <input type="text" pattern = "[A-Za-z]{0,100}" name= "voornaam" required></td>
					</tr>
					<tr>
					<td>Tussenvoegsel: </td><td><input type="text" pattern = "[A-Za-z]{0,20}" name = "tussenvoegsel" ></td>
					</tr>
					<tr>
					<td>Achternaam: </td><td><input type="text" pattern = "[A-Za-z]{0,100}" name="achternaam" required></td>
					</tr>
					<tr>
					<td>Postcode: </td><td><input type="text" pattern="[A-Za-z0-9]{6}" name="postcode" required></td>
					</tr>
					<tr>
					<td>Straatnaam:</td><td><input type="text" pattern = "[A-Za-z]{0,100}" name="straatnaam" required></td>
					</tr>
					<tr>
					<td>Huisnr: </td><td><input type="text"  pattern = "[0-9]{0,10}" name="huisnummer" required></td>
					</tr>
				</table>
			</div>
		</td>
	</tr>
           
</table>
<div>
	<input type="submit" value="Opslaan">
</div>
</div>
                 </Form>
		</div>
  </body>
</html>
