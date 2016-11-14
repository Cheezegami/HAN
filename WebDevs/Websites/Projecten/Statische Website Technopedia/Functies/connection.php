
<?php
    $dbinfo = array( "Database" => "USERS", "UID" => "sa", "PWD" => "Admin", "CharacterSet"  => 'UTF-8');
    $db = sqlsrv_connect(".\SQLexpress", $dbinfo);


if( $db )
{
     
}
else
{
     echo "Failed to connect.<br />";
     die( print_r( sqlsrv_errors(), true));
}
?>

