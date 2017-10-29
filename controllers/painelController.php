<?php
/**
 * Created by PhpStorm.
 * User: bruno
 * Date: 24/09/17
 * Time: 22:29
 */

class painelController extends Controller
{
    public function index()
    {
        $data = array();
        $this->loadTemplatePainel("proposta", $data);
    }

    public function acompanhar()
    {
        $pro = new Proposta();
        $data = array();
        $id = $_SESSION['login_id'];
        $data = $pro->acompanharProposta($id);
        $this->loadTemplatePainel("acompanhar", $data);
    }
}