
<!DOCTYPE html>
<!-- nog niet echt mee bezig -->
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
			<div class = "zoekbalk">
				Zoeken:<input type = "text" name = "zoekbalk">
				<input type = "submit" name = "Confirmbalk" value = "Zoek!">
			</div>
			<h1> Producten </h1>
			<table>
				<tr>
					
					<?php include 'product.php' ?>
					
					
				</tr>
					<tr>
					<td>
						<div class = "Product">
								<a href = "PPlogitech430.html">
									<img src="images/logitech430.jpg" alt="logo">
								</a>
							<div class = "productnaam">
								Logitech G430
							</div>
							<div class = "productprijs">
								€80
							</div>
							<div class = "bestelknop">
							<input type = "submit" value = "In de Winkelwagen">
							</div>
						</div>
					</td>
					<td>
						<div class = "Product">
								<a href = "PPasusn551jq.html">
									<img src="images/asusn551jq.jpg" alt="logo">
								</a>
							<div class = "productnaam">
								Asus N551JQ
							</div>
							<div class = "productprijs">
								€ 1000
							</div>
							<div class = "bestelknop">
							<input type = "submit" value = "In de Winkelwagen">
							</div>
						</div>
					</td>
					<td>
						<div class = "Product">
								<a href = "#">
									<img src="images/technopedialogo.png" alt="logo">
								</a>
							<div class = "productnaam">
								productnaam
							</div>
							<div class = "productprijs">
								€veel
							</div>
							<div class = "bestelknop">
							<input type = "submit" value = "In de Winkelwagen">
							</div>
						</div>
					</td>
					<td>
						<div class = "Product">
								<a href = "#">
									<img src="images/technopedialogo.png" alt="logo">
								</a>
							<div class = "productnaam">
								productnaam
							</div>
							<div class = "productprijs">
								€veel
							</div>
							<div class = "bestelknop">
							<input type = "submit" value = "In de Winkelwagen">
							</div>
						</div>
					</td>
					<td>
						<div class = "Product">
								<a href = "#">
									<img src="images/technopedialogo.png" alt="logo">
								</a>
							<div class = "productnaam">
								productnaam
							</div>
							<div class = "productprijs">
								€veel
							</div>
							<div class = "bestelknop">
							<input type = "submit" value = "In de Winkelwagen">
							</div>
						</div>
					</td>
				</tr>
			</table>
				<div class = "footer">
			<div class = "paginaNavigatie">
					<a href = "index.html">
						<input type="button" value="pagina 2">
					</a>
			</div>
	</div>
	</div>
	</div>
