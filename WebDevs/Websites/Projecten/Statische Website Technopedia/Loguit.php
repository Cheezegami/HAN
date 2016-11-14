<?php
session_start();
if (isset($_SESSION['inlognaam'])){
    
    session_destroy();
}
header('Refresh: 0; URL = '."index.php");





?>