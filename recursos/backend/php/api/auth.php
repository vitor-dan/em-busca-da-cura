<?php
include("../config/db.php");

if (isset($_POST["usuario"]) && isset($_POST["senha"])) {
    $usuario = $_POST["usuario"];
    $senha = $_POST["senha"];

    $sql = "SELECT * from usuario WHERE nome_usuario LIKE '$usuario'";
    $resultado = mysqli_query($conexao, $sql);

    $dados = mysqli_fetch_assoc($resultado);
    mysqli_free_result($resultado);

    $resposta = [];

    if (is_null($dados)) {
        $resposta = [
            "sucesso" => false,
            'mensagem' => "Usuário não encontrado"
        ];
    } else {
        if (!password_verify($senha, $dados['senha'])) {
            $resposta = [
                "sucesso" => false,
                'mensagem' => "Usuário e/ou incorretos"
            ];
        } else {
            $resposta = [
                "sucesso" => true,
            ];
        }
    }

    echo json_encode($resposta);

    mysqli_close($conexao);
}
