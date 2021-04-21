<?php

include("../config/db.php");

$sql = "SELECT usuario.usuario_id, usuario.nome_usuario, MAX(classificacao.pontos) AS pontos FROM classificacao AS classificacao INNER JOIN usuario AS usuario WHERE usuario.usuario_id = classificacao.usuario_id GROUP BY usuario_id ORDER BY classificacao.pontos DESC";

$resultado = mysqli_query($conexao, $sql);

$resposta = [];
while ($linha = mysqli_fetch_assoc($resultado)) {
    $resposta[] = $linha;
}

echo json_encode($resposta);

mysqli_free_result($resultado);

mysqli_close($conexao);