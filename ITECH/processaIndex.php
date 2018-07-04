<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title></title>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script type="text/javascript">

            function mensagesuccessfully()
            {
                setTimeout("window.location='FaleConoscoIndex.php'", 3000);
            }

        </script>



    </head>
    <body>
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
        $apiKey = 'SG.dK77d8rdQPyAsVR7KYgFKA.AgMVhZU6zL_UVRAp2FgVVBm0W2TWzsimpKfzh5fhzvA';
        $sg = new \SendGrid($apiKey);

        $response = $sg->client->mail()->send()->post($mail);

        ?>
        <script>;
            swal("Mensagem Envidada com Sucesso", "Clike no Botão OK!", "success");
        </script>;
        <?php

        echo "<script>mensagesuccessfully()</script>";
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
    </body>
</html>
