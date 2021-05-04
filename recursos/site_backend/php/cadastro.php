<?php
session_start();
if (isset($_SESSION["id"])) {
    header("location: login.php");
}
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Em Busca da Cura</title>
</head>

<body>
    <a href="index.php">Página inicial</a>
    <form action="controller/cadastro.php" method="post">
        <label for="form-nome">Nome</label>
        <input type="text" name="nome" id="form-nome" />
        <label for="form-email">E-mail</label>
        <input type="email" name="email" id="form-email" />
        <label for="form-senha">Senha</label>
        <input type="password" name="senha" id="form-senha" />

        <button type="submit">Cadastrar</button>
    </form>
</body>

</html>