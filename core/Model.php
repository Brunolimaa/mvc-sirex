<?php
/**
 * Created by PhpStorm.
 * User: bruno
 * Date: 24/09/17
 * Time: 15:16
 */

class Model
{
    protected $db;

    public function __construct()
    {
        global $db;
        $this->db = $db;
    }
}

