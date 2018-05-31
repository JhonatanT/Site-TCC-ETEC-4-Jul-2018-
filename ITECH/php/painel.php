    <?PHP
        //variaveis de conexao
        $host="localhost";
        $root="root";
        $senha="";
        $bd="pedido";
        //conectando o banco ao php
        $conexao = mysqli_connect($host, $root, $senha, $bd) or die (mysqli_error());
        //selecionando o banco de dados 
        mysqli_select_db($conexao, $bd) or die(mysqli_error());
    ?>
    <!DocType Html!>
    <hmtl>
        <head>
            <title>Administrador</title>
            <style>
                body{
                    margin: 0; background: url(imagens/fundo.jpg) fixed center; background-image: url(imagens/fundo.jpg); background-attachment: fixed; background-position: center; 
                    text-align: center;
                }
                a{
                    text-decoration: none;
                    color: gray;
                }
            </style>
        </head>
        <body>
            <br>
            <h1><center>Lista de Pedidos</center></h1>
            <br>
            <?PHP
                //pegando dados do banco de dados
                $resultado = mysqli_query($conexao, "SELECT * FROM pedidos");
                echo "<table>";
                echo "<tr><td>Email</td><td>Nome e sobrenome</td><td>Pedido</td></tr>";
                //enquanto eu ainda receber dados faça
                while($dados = mysqli_fetch_array($resultado))
                {
                    //variaveis que pegam uma linha do bd que foi transformado
                    $Email = $dados['email'];
                    $Nome = $dados['nome'];
                    $Pedido = $dados['pedido'];
                    //colocando os dados nas linhas e colunas da tabela
                    echo "<tr><td>$Email</td>";
                    echo "<td>$Nome</td>";
                    echo "<td>$Pedido</td></tr>";
                }
                echo "</table>";
            
                echo "<style>
                    table{
                        background-color:white;
                        margin:auto;
                        margin-top:10px;
                        font-size:15pt;
                        border-collapse: collapse;
                        border:2px solid black;
                        text-align:center;
                        width: 50%;
                    }
                    tr {
                        padding:20px;
                        border:2px solid black;
                    }
                    td {
                        border:2px solid black;
                    }
                    </style>";
                //fechando a conexao
                mysqli_close($conexao);
            ?>
            <br>
            <br>
            <a href="Login.html">Sair</a>
        </body>
    </hmtl>