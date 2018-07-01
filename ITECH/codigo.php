
<DOCTYPE html!>
    <html>
    <head>
        <title>Recuperar senha - Gennius</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="../ITECH/cssIndex/codigo.css">
        <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
        <link rel="shortcut icon" href="imagens/favicon.ico" type="image/x-icon"/>
    </head>
    <body>

    <div class="box">
        <h1>Digite seu E-mail e a sua resposta de segurança</h1>
        <form name="valida" method="post" action="ValidandoRecuperarSenha.php">

            <input type="text" name="email" placeholder="E-mail">
            <input type="text" name="codigo" placeholder="Código de segurança"><br>
            <input type="submit" value="Enviar" name="botaoAcessar">
            <button type="button" class="botao"><a href="Login.php">Voltar ao site</a></button>

        </form>

        <br>
    </div>

    <footer>
        <p>Todos os direitos reservados © 2018</p>
    </footer>
    </body>
    </html>s