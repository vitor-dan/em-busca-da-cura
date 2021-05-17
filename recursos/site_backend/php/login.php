<?php
session_start();
if (isset($_SESSION["id"])) {
    header("location: painel.php");
}
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Em Busca da Cura</title>
</head>

<body>
    <a href="index.php">Página inicial</a>
    <form action="controller/autenticacao.php" method="post">
        <label for="form-email">E-mail</label>
        <input type="email" name="email" id="form-email" required />
        <label for="form-senha">Senha</label>
        <input type="password" name="senha" id="form-senha" required />
        <button type="submit">Entrar</button>

    </form>
    <a href="cadastro.php">Quero me cadastrar</a>
</body>

</html>