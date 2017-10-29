<?php
/**
 * Created by PhpStorm.
 * User: bruno
 * Date: 24/09/17
 * Time: 23:29
 */

class ajaxController extends Controller
{

    public function cadastro()
    {
        $pro = new Proposta();

        $ext = addslashes($_POST['extensao']); //titulo_atividade
        $mod = addslashes($_POST['modalidade']); //modalidade_extensão
        $tematica = addslashes($_POST['tematica']); //area_tematica
        $unidade = addslashes($_POST['unidade']); //unidade
        $curso = addslashes($_POST['curso']); //curso_setor
        $cordNome = addslashes($_POST['cordeNome']);  //nome
        $email = addslashes($_POST['email']); //email
        $fone = addslashes($_POST['fone']); //telefone
       // $coord = addslashes($_POST['coord']); //nomeTipo
        $regime = addslashes($_POST['regime']); //regime_trabalho

        $jus = addslashes($_POST['jus']);//justificativa
        $obj = addslashes($_POST['obj']);//objetivos
        $disc = addslashes($_POST['disc']);//metodologia

        $local = addslashes($_POST['local']);//local
        $inicio = addslashes($_POST['inicio']);//data_inicio
        $termino = addslashes($_POST['termino']);//data_fim
        $duracao = addslashes($_POST['duracao']);//duração_horas
        /*$docente = addslashes($_POST['docente']);
        $discente = addslashes($_POST['discente']);
        $func = addslashes($_POST['func']);
        $doce = addslashes($_POST['doce']);
        */
        $id = $_SESSION['login_id'];
        $pro->cadastroProposta($id, $ext, $mod, $tematica, $unidade, $curso, $cordNome,$regime,$email,$fone, $jus, $obj,$disc,$local,$inicio, $termino, $duracao);

    }

    public function cadastroAtividade()
    {
        $pro = new Proposta();
        $sele = addslashes($_POST['sele']);//local
        $nome = addslashes($_POST['nome']);//data_inicio
        $func = addslashes($_POST['func']);//data_fim
        $setor = addslashes($_POST['setor']);//duração_horas
        $horario = addslashes($_POST['horario']);//local

        $id = $_SESSION['login_id'];
        $pro->cadastroAtividadeExt($id,$nome,$func,$setor,$horario,$sele);
    }

    public function listaAtividade()
    {
        $data = array();
        $pro = new Proposta();
        $id = $_SESSION['login_id'];
        $data = $pro->listaAtt($id);
        //$data = array("lista"=>"Bruno Pereira de Lima");

        //var_dump($data);
        $this->loadView('painel',$data);
        //echo json_encode($data);
    }

    /*public function cadastroTaINSERT INTO `proposta` ( `id_usuario_proposta`, `titulo_atividade`, `modalidade_extensÃ£o`, `area_tematica`, `unidade`, `curso_setor`, `nome`, `regime_trabalho`, `email`, `telefone`, `justificativa`, `objetivos`, `metodologia`, `local_atividade`, `data_inicio`, `data_fim`, `duraÃ§Ã£o_horas` ) VALUES ( 1, 'a', 'Programa', 'PrestaÃ§Ã£o de ServiÃ§os', 'Projeto', 'b', 'c', 'Tempo Integral', '','' ,'f', 'g', 'h', 'h', 'i', 'j', 'l' )"ble2()
    {

        $jus = addslashes($_POST['jus']);
        $obj = addslashes($_POST['obj']);
        $disc = addslashes($_POST['disc']);
    }
    public function cadastroTable3(){
        $local = addslashes($_POST['local']);
        $inicio = addslashes($_POST['inicio']);
        $termino = addslashes($_POST['termino']);
        $duracao = addslashes($_POST['duracao']);
        $docente = addslashes($_POST['docente']);
        $discente = addslashes($_POST['discente']);
        $func = addslashes($_POST['func']);
        $doce = addslashes($_POST['doce']);

       // echo $local;

    }*/

    public function listaproposta()
    {
        $data = array();
        $pro = new Proposta();
        $id = addslashes($_POST['id']);
        $dados = $pro->listaproposta($id);

        foreach($dados as $dado){
            echo"<td>".$dado['titulo_atividade']."</td>";
            echo"<td>".$dado['modalidade_extensao']."</td>";
            echo"<td>".$dado['area_tematica']."</td>";
            echo"<td>".$dado['unidade']."</td>";
            echo"<td>".$dado['curso_setor']."</td>";
            echo"<td>".$dado['nome']."</td>";
            echo"<td>".$dado['regime_trabalho']."</td>";
            echo"<td>".$dado['email']."</td>";
            echo"<td>".$dado['telefone']."</td>";
            echo"<td>".$dado['justificativa']."</td>";
            echo"<td>".$dado['objetivos']."</td>";
            echo"<td>".$dado['metodologia']."</td>";
            echo"<td>".$dado['local_atividade']."</td>";
            echo"<td>".$dado['data_inicio']."</td>";
            echo"<td>".$dado['data_fim']."</td>";
            echo"<td>".$dado['duracao_horas']."</td>";

        }

    }

}