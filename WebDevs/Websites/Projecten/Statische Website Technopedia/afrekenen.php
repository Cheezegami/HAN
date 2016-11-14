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
			<div class = HoofdVak id = HoofdvakAfrekenen>
				<h1>Afrekenen</h1>
				<p>Lijst met producten</p>
				<div class = "WinkelWagenTabel">
					<table>
					<tr>
						<th>&nbsp; </th>
						<th>Productnaam</th>
						<th>Prijs</th>
						<th>Aantal</th>
						<th>Totaal</th>
						<th>Verwijder</th>
					</tr>
					<tr>
						
						<td><img src="images/asusn551jq.jpg" alt="logo"></td>
						<td>Asus n551jx</td>
						<td>€1000</td>
						<td>1</td>
						<td>€1000</td>
						<td><input type = "button" value = "-"></td>
					</tr>
					<tr>
						<td><img src="images/logitech430.jpg" alt="logo"></td>
						<td>Logitech G430</td>
						<td>€80</td>
						<td>1</td>
						<td>€80</td>
						<td><input type = "button" value = "-"></td>
					</tr>
					<tr>
						<td>
						<img src="images/logitechmuis.jpg" alt="logo">
						</td>
						<td>Logitech G502</td>
						<td>€30</td>
						<td>2</td>
						<td>€60</td>
						<td><input type = "button" value = "-"></td>
					</tr>
				</table>
				</div>
			<div class = "optellingPrijs">
				<div class = "optellingPrijsTekst">
				Totaal:
				</div>
				<div class = "optellingPrijsNummer">
				€1140
				</div>
				
			</div>
			<div>
					<select>
						<option>Mastercard</option>
						<option>PayPal</option>
						<option>Bankgiro</option>
						<option>IDeal</option>
						<option>Bitcoin</option>
					</select>
				<input type = button value = "Afrekenen">
			</div>
			</div>
		</div>
  </body>
</html>
