<?php
//session_start();
/**
 * Created by PhpStorm.
 * User: bruno
 * Date: 25/09/17
 * Time: 12:37
 */

class Usuario extends Model
{
    protected $nome;
    protected $cpf;
    protected $setor;
    protected $fone;
    protected $email;

    public function setNome($n)
    {
        $this->nome = $n;
    }

    public function setCpf($c)
    {
        $this->cpf = $c;
    }

    public function setSetor($s)
    {
        $this->setor = $s;
    }

    public function setFone($f)
    {
        $this->fone = $f;
    }

    public function setMail($e)
    {
        $this->email = $e;
    }

    public function getNome()
    {
        return $this->nome;
    }

    public function getCpf()
    {
        return $this->cpf;
    }

    public function getSetor()
    {
        return $this->setor;
    }

    public function getFone()
    {
        return $this->fone;
    }

    public function getMail()
    {
        return $this->email;
    }

    public function cadastro()
    {
        $stmt = $this->db->prepare("INSERT INTO usuario(nome, cpf, tipo, telefone, email, senha)
                        VALUES(?,?,?,?,?,?);
        ");
        $stmt->bindValue(1, $this->getNome());
        $stmt->bindValue(2, $this->getCpf());
        $stmt->bindValue(3, $this->getSetor());
        $stmt->bindValue(4, $this->getFone());
        $stmt->bindValue(5, $this->getMail());
        $stmt->bindValue(6, $this->getMail());
        if($stmt->execute()){
            return true;
        }
    }

    public function login($user, $pass)
    {
        $sql = "SELECT * FROM usuario WHERE email = '{$user}' AND senha = '{$pass}'";
        //var_dump($sql); exit();
        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        $dados = $stmt->fetch();
        if($stmt->rowCount() > 0){
            $_SESSION['login_id'] = $dados['id_aluno'];
            return true;
        }

    }

}