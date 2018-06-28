<?PHP
    $host="localhost";
    $root="root";
    $senha="1234";
    $bd="GenniusDB";
    $conexao = mysqli_connect($host, $root, $senha, $bd) or die (mysqli_error());

    mysqli_select_db($conexao, $bd) or die(mysqli_error());
?>
<!DocType Html!>
    <html>
        <head>
            <title>Criando um Novo Usuário</title>
            <script type="text/javascript">
				//se ele digitou o email certo vá para o painel
                function Cadastrosuccessfully()
                {
                    setTimeout("window.location='carregando2.php'", 0);  
                }
				//se não vá para o login
                function Cadastrofailed()
                {
                    setTimeout("window.location='Login.html'", 2000);
                }
            </script>
            
        </head>
        <body>
            <?PHP
                $Nome=$_POST['txtNome'];
                $Email=$_POST['txtEmail'];
                $Senha=$_POST['txtSenhas'];    
				$Codigo=$_POST['txtResposta'];
            if ($Nome==""||$Email==""||$Senha==""||$Codigo==""){
                echo "<center>Algun(s) Compo(s) está Vazio</center>";
                echo "<script>Cadastrofailed()</script>";
            }else {
                $sql = "INSERT INTO tbUsuario(nome_completo, email, senha, pergunta) values('$Nome', '$Email','$Senha','$Codigo')";
                mysqli_query($conexao, $sql);
                mysqli_close($conexao);
                echo "<script>Cadastrosuccessfully()</script>";
            }
            mysqli_close($conexao);
            echo    "<style>
                    body
                    {
                        background-color: #036;
                    }
                    center
                    {
                        text-align:center;
                        position: center;
                        font-size: 30px;
                        font-family: 'Quicksand', sans-serif;
                        color: white;
                    }
                    </style>";
            ?>
        </body>
    </html>