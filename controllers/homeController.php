<?php

/**
 * Created by PhpStorm.
 * User: bruno
 * Date: 24/09/17
 * Time: 14:04
 */

class homeController extends Controller
{
    public function index()
    {
        //Realiza login
        $data = array();

        $user = new Usuario();

        if (isset($_POST['login'])) {
            $usuario = addslashes($_POST['user']);
            $pass = addslashes($_POST['pass']);

            if ($user->login($usuario, $pass)) {
                header("Location:painel");
            }
        }

        $this->loadTemplate("login", $data);
    }
}