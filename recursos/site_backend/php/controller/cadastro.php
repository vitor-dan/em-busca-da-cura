<?php
include("../config/conexao.php");

if (isset($_POST["email"]) && isset($_POST["senha"])) {
    $nome = $_POST["nome"];
    $email = $_POST["email"];
    $senha = password_hash($_POST["senha"], PASSWORD_DEFAULT);

    $sql = "SELECT email from usuario WHERE email LIKE '$email'";
    $resultado = mysqli_query($conexao, $sql);

    if (mysqli_fetch_assoc($resultado) != null) {
        echo 'existe';
        mysqli_free_result($resultado);
    } else {
        mysqli_free_result($resultado);

        $sql = "INSERT INTO usuario (nome, email, senha) VALUES ('$nome', '$email', '$senha')";
        $resultado = mysqli_query($conexao, $sql);
        echo json_encode($resultado);
    }

    mysqli_close($conexao);
}
