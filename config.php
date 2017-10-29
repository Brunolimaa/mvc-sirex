<?php
//require "environment.php";
/**
 * Created by PhpStorm.
 * User: bruno
 * Date: 24/09/17
 * Time: 15:05
 */



$config = array();
//if(ENVIRONMENT == "development") {
    $config['dbuser'] = 'root';
    $config['dbpass'] = '';
    $config['host'] = 'localhost';
    $config['dbname'] = 'sirex_next';
//}

global $db;

try{
    $db = new PDO("mysql:host=".$config['host'].";dbname=".$config['dbname'], $config['dbuser'], $config['dbpass']);
}catch(\PDOException $e) {
    echo "Erro ".$e->getMessage();
    exit();
}
