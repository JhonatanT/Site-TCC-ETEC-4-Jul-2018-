<?PHP
    $host="localhost";
    $root="root";
    $senha="1234";
    $bd="GenniusDB";
    $conexao = mysqli_connect($host, $root, $senha, $bd) or die (mysqli_error());

    mysqli_select_db($conexao, $bd) or die(mysqli_error());
?>
    <html>
        <head>
            <title>Criando um Novo Usuário</title>
            <script type="text/javascript">
				//se ele digitou o email certo vá para o painel
                function Cadastrosuccessfully()
                {
                    setTimeout("window.location='painelAdmin.php'", 2000);  
                }
				//se não vá para o login
                function Cadastrofailed()
                {
                    setTimeout("window.location='painelAdmin.php'", 2000);
                }
            </script>
            <link rel="stylesheet" href="cssIndex/admin.css">
            <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
        </head>
        <body>
            <div class="containerAdmin">
            <div class="container">
            <?PHP
                $idQuestao=$_POST['txtExcluir'];
				
            if ($idQuestao==""){
            ?>
                <center><?php echo "<center>Preencha o campo id questao</center>"; ?></center>
            <?php
                echo "<script>Cadastrofailed()</script>";
            }else {
                $sql = "delete from tbQuestao where id_questao = '$idQuestao';";
                mysqli_query($conexao, $sql);
				
				$sqlAlternativa = "delete from tbAlternativa where cod_questao = '$idQuestao';";
				mysqli_query($conexao, $sqlAlternativa);
				
            ?>
				<center><?php echo "Pergunta excluida com sucesso!"; ?></center>
            <?php
                echo "<script>Cadastrosuccessfully()</script>";
               
            }
			
            mysqli_close($conexao);
            echo    "<style>
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