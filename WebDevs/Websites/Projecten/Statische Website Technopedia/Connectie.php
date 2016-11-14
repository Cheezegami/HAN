
<?php
    $dbinfo = array( "Database" => "USERS", "UID" => "sa", "PWD" => "Admin");
    $db = sqlsrv_connect(".\SQLexpress", $dbinfo);

if( $db ) {
     
}else{
     echo "Failed to connect.<br />";
     die( print_r( sqlsrv_errors(), true));
}
?>
