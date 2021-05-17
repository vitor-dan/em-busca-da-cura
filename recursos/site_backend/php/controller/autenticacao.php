<?php
include("../config/conexao.php");

if (isset($_POST["email"]) && isset($_POST["senha"])) {
    $email = $_POST["email"];
    $senha = $_POST["senha"];

    $sql = "SELECT * from usuario WHERE email LIKE '$email'";
    $resultado = mysqli_query($conexao, $sql);

    $dados = mysqli_fetch_assoc($resultado);
    mysqli_free_result($resultado);

    $resposta = [];

    if (is_null($dados)) {
        $resposta = [
            "successo" => false,
            'messagem' => "Usuário não encontrado"
        ];
    } else {
        if (!password_verify($senha, $dados['senha'])) {
            $resposta = [
                "successo" => false,
                'messagem' => "Usuário e/ou incorretos"
            ];
        } else {
            session_start();
            $_SESSION["id"] = $dados["usuario_id"];
            $_SESSION["nome"] = $dados["nome"];
            $_SESSION["email"] = $dados["email"];

            header("location: ../painel.php");
            // echo json_encode($dados);
        }
    }

    echo json_encode($resposta);

    mysqli_close($conexao);
}
