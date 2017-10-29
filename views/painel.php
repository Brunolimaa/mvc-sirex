<?php

foreach($viewData as $dados){
    echo "<tr>";
    echo "<td>".$dados['tipo']."</td>";
    echo "<td>".$dados['nome']."</td>";
    echo "<td>".$dados['funcao']."</td>";
    echo "<td>".$dados['curso_setor']."</td>";
    echo "<td>".$dados['carga_horario']." hrs</td>";
    echo "</tr>";
}



