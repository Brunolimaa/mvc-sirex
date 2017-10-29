<?php
/**
 * Created by PhpStorm.
 * User: bruno
 * Date: 24/09/17
 * Time: 15:01
 */

class Controller
{
    public function loadView($viewName, $viewData = array())
    {
        extract($viewData);
        require "views/".$viewName.".php";
    }

    public function loadTemplate($viewName, $viewData = array())
    {
        require "views/template.php";
    }

    public function loadTemplatePainel($viewName, $viewData = array())
    {
        require "views/templatePainel.php";
    }

    public function loadViewInTemplate($viewName, $viewData = array())
    {
        extract($viewData);
        require "views/".$viewName.".php";
    }

}