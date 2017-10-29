<table class="table table-striped jambo_table bulk_action">
    <thead style="font-weight: bold;">
        <td>Proposta</td>
        <td>Situacao</td>
        <td>Acao</td>
    </thead>

    <tbody>
<?php

foreach($viewData as $data){
    echo "<tr>";
    echo "<td>".$data['titulo_atividade']."</td>";
    if($data['estado_proposta'] == 1){
        echo '<td>Em analise</td><td><button type="button" class="btn btn-warning" onclick="listaProposta('.$data['id_proposta'].');" data-toggle="modal" data-target="#atividade" >Visualizar</button></td>';
    }else{
        echo '<td>Aprovado</td><td><a href="http://localhost/mvc-sirex/painel/acompanhar?id='.$data['id_proposta'].'">Visualizar</a></td>';
    }
    echo "</tr>";

}
?>
    </tbody>
</table>

<!-- MODAL ADD MAIS CADASTRO -->
<div class="container">
    <!-- Modal -->
    <div class="modal fade" id="atividade" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content" style="width: 1305px; margin: 200px -205px;">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Situacao - <strong style="color:red;">Em analise</strong></h4>
<!--                    <ul class="descricao">-->
<!--                        <li>Em analise</li>-->
<!--                    </ul>-->
                </div>
                <div >
                    <div class="col-md-12">
                        <table class="table table-striped jambo_table bulk_action">
                            <thead style="font-weight: bold;">
                                <td>Titulo</td>
                                <td>Modalidade</td>
                                <td>Area tematica</td>
                                <td>Unidade</td>
                                <td>Curso / Setor</td>
                                <td>Nome</td>
                                <td>Regime do Trabalho</td>
                                <td>E-mail</td>
                                <td>Telefone</td>
                                <td>Justificativa</td>
                                <td>Objetivos</td>
                                <td>Metodologia</td>
                                <td>Local Atividade</td>
                                <td>Data Inicio</td>
                                <td>Data Fim</td>
                                <td>Duracao Horas</td>
                            </thead>
                            <tbody id="tableproposta" style="font-size: 8pt;">

                            </tbody>
                        </table>
                        
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">X</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- fim modal -->