<?php
/**
 * Created by PhpStorm.
 * User: bruno
 * Date: 16/10/17
 * Time: 13:21
 */

class cadastroController extends Controller
{
    public function index()
    {
        $dados = array();
        $this->loadTemplate('cadastro', $dados);
    }

    public function registro()
    {
        $user = new Usuario();

        $nome = addslashes($_POST['nome']);
        $cpf = addslashes($_POST['cpf']);
        $setor = addslashes($_POST['setor']);
        $telefone = addslashes($_POST['telefone']);
        $email = addslashes($_POST['email']);

        $user->setNome($nome);
        $user->setCpf($cpf);
        $user->setSetor($setor);
        $user->setFone($telefone);
        $user->setMail($email);
        $user->cadastro();

    }
}