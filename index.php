<?php
//require "environment.php";
session_start();

/**
 * Created by PhpStorm.
 * User: bruno
 * Date: 24/09/17
 * Time: 13:59
 */
require "config.php";
//require "environment.php";

spl_autoload_register(function($class){
    if(file_exists("controllers/".$class.".php")) {
        require "controllers/".$class.".php";
    }else if(file_exists("models/".$class.".php")) {
        require "models/".$class.".php";
    }else if(file_exists("core/".$class.".php")){
        require "core/".$class.".php";
    }
});

$core = new Core();
$core->run();
