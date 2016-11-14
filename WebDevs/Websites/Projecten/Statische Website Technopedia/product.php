<?PHP
include 'header.php';
require 'Connectie.php';
$queryProducten = "SELECT	nummer, productnaam, prijs, plaatje
FROM	product";

$productenResult = sqlsrv_query($db, $queryProducten, array(), array( "Scrollable" => 'static' ));
 

    $numResultsProducten = sqlsrv_num_rows($productenResult);

if($productenResult)
{
 
    if($numResultsProducten > 0)
    {       

            while($rec = sqlsrv_fetch_array($productenResult))
            {                
                echo'
				<td>
                <div class = "Product">
								<a href = Productpagina.php?productnummer='.urlencode($rec['nummer']).'>
							
								
									<img src="images/'. $rec['plaatje'].'" alt="logo">
								</a>
							<div class = "productnaam">
								'.$rec['productnaam'].'
							</div>
							<div class = "productprijs">
								€'.$rec['prijs'].'
							</div>
							<div class = "bestelknop">
							<input type = "submit" value = "In de Winkelwagen">
							</div>
						</div>  
				</td>						
                ';
            }           

    }
    // Anders
    else
    {
        // Geen producten
        echo 'Er zijn nog geen producten in de etalage.';
    }
}
?>
