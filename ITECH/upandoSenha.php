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
    <title>Recuperar Senha</title>
    <script type="text/javascript">
        function TrocaSenhasuccessfully()
        {
            setTimeout("window.location='carregando2.php'", 0);
        }
        function TrocaSenhafailed()
        {
            setTimeout("window.location='recuperarSenha.php'", 2000);
        }
        function IDfailed()
        {
            setTimeout("window.location='Login.html'", 2000);
        }
    </script>
</head>
<body>
<?PHP
session_start();

    $Senha=$_POST['Senha'];
    $ConfSenha=$_POST['ConfirmSenha'];
    $id = $_POST['ID'];

    if ($Senha == $ConfSenha){

        $sql =  mysqli_query($conexao,"SELECT id_usuario FROM tbUsuario WHERE id_usuario = '$id'")or die (mysqli_error());
        $row =  mysqli_num_rows($sql);
if($row > 0)
{
    $sql = "update tbusuario set senha = '$Senha' WHERE id_usuario ='$id'";
    mysqli_query($conexao,$sql);
    echo "<script>TrocaSenhasuccessfully()</script>";
    mysqli_close($conexao);
}else{
    echo "<center>Código Incorreto, Digitar o Código Certo</center>";
    echo "<script>IDfailed()</script>";
}

    }else{
        echo "<center>Senhas não são Iguais</center>";
        echo "<script>TrocaSenhafailed()</script>";
    }

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