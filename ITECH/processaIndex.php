<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Mensagem enviada com sucesso</title>
        <script type="text/javascript">
                function mensagemUsuario()
                {
                    setTimeout("window.location='faleconoscoIndex.php'", 2000);  
                }
            </script>
            <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
            <link rel="stylesheet" href="cssIndex/admin.css">
    </head>
    <body>
        <div class="containerAdmin">
        <div class="container">
            <?php
            $nome = $_POST['txtNome'];
            $email = $_POST['txtEmail'];
            $mensagem = $_POST['txtPedido'];

            require 'vendor/autoload.php';

            $from = new SendGrid\Email(null, $email);
            $subject = "Mensagem de contato(GENNIUS)";
            $to = new SendGrid\Email(null, "genniusItechForce@gmail.com");
            $content = new SendGrid\Content("text/html", "Olá Itech Force, <br><br>Nova mensagem de contato<br><br>Nome: $nome<br>Email: $email <br>Mensagem: $mensagem");
            $mail = new SendGrid\Mail($from, $subject, $to, $content);

            //Necessário inserir a chave
            $apiKey = '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';
            $sg = new \SendGrid($apiKey);

            $response = $sg->client->mail()->send()->post($mail);
            ?>
            <center><?php echo "Mensagem enviada com sucesso"; ?></center>
            <?php
            echo "<script>mensagemUsuario()</script>";
            echo "<style>
                        body
                        {
                            text-align:center;
                            position: center;
                            font-size: 50px;
                            font-family: 'Quicksand', sans-serif;
                            color: #436f99;
                        }
                        </style>";
            ?>
        </div>
        </div>
    </body>
</html>
