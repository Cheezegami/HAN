   
<?php


function valideerPostcode($Postcode)
    {
        global $isFout;
        $delen = str_split($Postcode);
        $aantalDelen = count($delen);
        if($aantalDelen != 6){	
            //echo "fout";
            $isFout = TRUE;
	}
    else{
        for($i = 0; $i<4; $i++){
            if(!preg_match("#^[0-9]*$#", $delen[$i]))
            {
                //echo 'fout2';
                $isFout = TRUE;

            }
        }
        for($i = 4; $i<count($delen); $i++)
        {
            if(!preg_match("#^[a-zA-Z]*$#", $delen[$i]))

            {
                //	echo 'fout3';
                $isFout = TRUE;

            } 
        }
	}
}		
function valideerDatum($Datum)
{
	global $isFout;
	$delen = str_split($Datum);
	$aantalDelen = count($delen);
	if($aantalDelen != 10){	
		echo "fout";
		$isFout = TRUE;
	}
	else{
	for($i = 0; $i<2; $i++){
		if(!preg_match("#^[0-9]*$#", $delen[$i]))
			{
				echo 'letterfout';
				$isFout = TRUE;
				
			}
		}
		if(!preg_match("#^[/]*$#", $delen[2]))
		{
			echo 'foute slash';
			$isFout = TRUE;
			
		}
	for($i = 3; $i<5; $i++){
		if(!preg_match("#^[0-9]*$#", $delen[$i]))
			{
				echo 'letterfout';
				$isFout = TRUE;
				
			}
		}
		if(!preg_match("#^[/]*$#", $delen[5]))
		{
			echo 'foute slash';
			$isFout = TRUE;
			
		}
		for($i = 6; $i<10; $i++){
		if(!preg_match("#^[0-9]*$#", $delen[$i]))
			{
				echo 'letterfout';
				$isFout = TRUE;
				
			}
		}
	}
}		

function valideerWachtwoord()
{
	global $isfout;
	global $wachtwoord;
	global $herhaal_wachtwoord;
	if($wachtwoord != $herhaal_wachtwoord){
		$isfout = TRUE;
	
	}	
	else{}
}

function valideerInvoer($input)
{
	global $isFout;
	if (!preg_match("#^[a-zA-Z0-9@./ ]*$#",$input))
{
	echo $input. '<br>';
	  $isFout = true;
}
    
else{
	 

}
}


function generateRandomString($length = 1) {
    $characters = '0123456789';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}

?>