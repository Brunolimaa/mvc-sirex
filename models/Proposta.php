<?php
/**
 * Created by PhpStorm.
 * User: bruno
 * Date: 25/09/17
 * Time: 13:51
 */

class Proposta extends Model
{
    public function cadastroProposta( $id, $titulo, $mod, $area, $und, $curso, $nome,
        $regime,$mail, $fone, $jus, $obj,$met,$loc,
        $dataini, $datafim, $duracao)
    {
        $sql = "
        INSERT INTO 
          `proposta`
            ( 
              `id_usuario_proposta`, 
              `titulo_atividade`, 
              `modalidade_extensao`, 
              `area_tematica`, 
              `unidade`, 
              `curso_setor`, 
              `nome`, 
              `regime_trabalho`, 
              `email`, `telefone`, 
              `justificativa`, 
              `objetivos`, 
              `metodologia`, 
              `local_atividade`, 
              `data_inicio`, 
              `data_fim`, 
              `duracao_horas`,
              `estado_proposta`
              ) 
        VALUES 
        (
         $id, '{$titulo}', '{$mod}', '{$area}', '{$und}', '{$curso}', '{$nome}', 
        '{$regime}', '{$mail}','{$fone}' ,'{$jus}', '{$obj}', '{$met}', '{$loc}',
        '{$dataini}', '{$datafim}', '{$duracao}',1
        )";

       // var_dump($sql);
        $stmt = $this->db->prepare($sql);
        if($stmt->execute()){
            return true;
        }
    }

    public function cadastroAtividadeExt($id, $nome, $funcao, $curso, $carga, $tipo)
    {
        $sql = "INSERT INTO `colaborador`(
                                  `id_aluno`,
                                   `nome`, 
                                   `funcao`,
                                   `curso_setor`, 
                                   `carga_horario`, 
                                   `tipo`) 
                VALUES ($id,'{$nome}','{$funcao}','{$curso}','{$carga}','{$tipo}')";
        $stmt = $this->db->prepare($sql);
        if($stmt->execute()) {
            return true;
        }

    }

    public function listaAtt($id)
    {
        $sql = "SELECT * FROM colaborador WHERE id_aluno = {$id}";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function acompanharProposta($id){
        $sql = "SELECT * FROM proposta WHERE id_usuario_proposta = $id ";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function listaproposta($id)
    {
        $sql = "SELECT * FROM proposta WHERE id_proposta = $id ";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}