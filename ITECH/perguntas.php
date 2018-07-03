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
                $edicao=$_POST['txtEdicao'];
                $banca=$_POST['txtBanca'];
                $prova=$_POST['txtProva'];    
                $enunciado=$_POST['txtEnunciado'];    
				$codigoMateria=$_POST['txtNomeMateria'];
				
				$alternativaUm = $_POST['txtAlternativaUm'];
				$valorUm = $_POST['txtValorUm'];
				$alternativaDois = $_POST['txtAlternativaDois'];
				$valorDois = $_POST['txtValorDois'];
				$alternativaTres = $_POST['txtAlternativaTres'];
				$valorTres = $_POST['txtValorTres'];
				$alternativaQuatro = $_POST['txtAlternativaQuatro'];
				$valorQuatro = $_POST['txtValorQuatro'];
				
            if ($edicao==""||$banca==""||$prova==""||$enunciado==""||$codigoMateria==""||$alternativaUm==""||$alternativaDois==""||$alternativaTres==""||$alternativaQuatro==""||$valorUm==""||$valorDois==""||$valorTres==""||$valorQuatro==""){
            ?>
                <center><?php echo "<center>Algun(s) Compo(s) está Vazio</center>"; ?></center>
            <?php
                echo "<script>Cadastrofailed()</script>";
            }else {
                $sql = "insert into tbquestao(edicao,banca,prova,enunciado,cod_materia) values ('$edicao', '$banca','$prova','$enunciado','$codigoMateria');";
                mysqli_query($conexao, $sql);
				
				$idDaQuestao = mysqli_insert_id($conexao);
				
				$sqlAlternativa = "insert into tbAlternativa(texto,correta,cod_questao) values ('$alternativaUm', '$valorUm','$idDaQuestao'),
				('$alternativaDois', '$valorDois','$idDaQuestao'),
				('$alternativaTres', '$valorTres','$idDaQuestao'),
				('$alternativaQuatro', '$valorQuatro','$idDaQuestao');";
				mysqli_query($conexao, $sqlAlternativa);
				?>
				<center><?php echo "Pegunta cadastrada com sucesso!"; ?></center>
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