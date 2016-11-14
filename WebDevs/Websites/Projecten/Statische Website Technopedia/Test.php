<html>
	<head>
		<title>Website</title> <!-- Displayed page name on tab -->
		<meta charset="utf-8" /> <!-- uses the utf-8 character set to encode the characters -->
		<meta http-equiv="Content-type" content="text/html; charset=utf-8" /> <!-- further specifies the characters and content used -->
		<meta name="viewport" content="width=device-width, initial-scale=1" /> <!-- usability for mobile devices -->
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>
	<body>

<?PHP
$queryProducten = "SELECT	nummer, productnaam, prijs,beschrijving,  plaatje
FROM	product
where nummer = ".$_GET['productnummer'].""
;
require 'Connectie.php';
$productenResult = sqlsrv_query($db, $queryProducten, array(), array( "Scrollable" => 'static' ));
 //$productenResult = sqlsrv_query($db,$queryProducten, null);

    $numResultsProducten = sqlsrv_num_rows($productenResult);
    //echo "$numResultsProducten";
// Als query is gelukt
 include 'bovenkant.php'; 
if($productenResult)
{
    // Als er items zijn
    if($numResultsProducten > 0)
    {
            
               echo '
	<div class = Content>
		<div class = "HoofdVak">
			<input type = "button" value = "Terug">
			<div class = "test1">				
				<div class = "test2">
				<img src="images/'. $rec['plaatje'].'" alt="logo">
				</div>
				<div class = "test3">
					<div class = "test4">
					'.$rec['productnaam'].'
					</div>
					<div class = "test4">
					€'.$rec['prijs'].'
					</div>
					<div class = "test5">
					'.$rec['beschrijving'].'
					</div>
				</div>
				<div class = "test6">
				aantal: 
				<input type = text>
				<input type = "button" value = "Toevoegen aan winkelwagen"> 
				</div>
			</div>
			<div class = "test10">
			<h2>Gerelateerde producten</h2>
			</div>
			<div class = "test7">
				<div class = "test8">
					<img src="images/technopedialogo.png" alt="logo">
					<div class = "test9">
					Naam
					</div>
					<div class = "test9">
					Prijs
					</div>
					<div>
					<input type = "button" value = "In de winkelwagen">
					</div>
				</div>
				<div class = "test8">
					<img src="images/technopedialogo.png" alt="logo">
					<div class = "test9">
					Naam
					</div>
					<div class = "test9">
					Prijs
					</div>
					<div>
					<input type = "button" value = "In de winkelwagen">
					</div>
				</div>
				<div class = "test8">
					<img src="images/technopedialogo.png" alt="logo">
					<div class = "test9">
					Naam
					</div>
					<div class = "test9">
					Prijs
					</div>
					<div>
					<input type = "button" value = "In de winkelwagen">
					</div>
				</div>			
			</div>
		</div>
	</div>
	';
           }
    // Anders
    else
    {
        // Geen producten
        echo 'Er zijn nog geen producten in de etalage.';
    }
}
?>
</body>