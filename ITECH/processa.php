<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
		$nome = $_POST['txtNome'];
		$email = $_POST['txtEmail'];
		$mensagem = $_POST['txtPedido'];
		
        require 'vendor/autoload.php';

        $from = new SendGrid\Email(null, "jhonatantavaris@hotmail.com");
        $subject = "Mensagem de contato(GENNIUS)";
        $to = new SendGrid\Email(null, "jhonatantavaris@hotmail.com");
        $content = new SendGrid\Content("text/html", "Olá Cesar, <br><br>Nova mensagem de contato<br><br>Nome: $nome<br>Email: $email <br>Mensagem: $mensagem");
        $mail = new SendGrid\Mail($from, $subject, $to, $content);
        
        //Necessário inserir a chave
        $apiKey = 'SG.dK77d8rdQPyAsVR7KYgFKA.AgMVhZU6zL_UVRAp2FgVVBm0W2TWzsimpKfzh5fhzvA';
        $sg = new \SendGrid($apiKey);

        $response = $sg->client->mail()->send()->post($mail);
        echo "Mensagem enviada com sucesso";
		
        ?>
    </body>
</html>
