<!--
<?php
 //coxexao
    $host="localhost";
    $root="root";
    $senha="1234";
    $bd="GenniusDB";
    $conexao = mysqli_connect($host, $root, $senha, $bd) or die (mysqli_error());
	mysqli_set_charset( $conexao, 'utf8');
    mysqli_select_db($conexao, $bd) or die(mysqli_error());
    //iniciando as variaveis globais
    session_start();
	
?>
-->
<html>
    <head>
        <title>Painel do Administrador</title>
        <meta name="description" content="">
        <meta charset="utf-8">
        <link rel="stylesheet" href="../itech/cssIndex/painel.css">
        <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
        <link rel="shortcut icon" href="imagens/favicon.ico" type="image/x-icon"/>
    </head>
    <body>
        <div class="container">
            <div class="principal">
                <a href="sairAdmin.php"><button class="btnSair">Sair</button></a>
                <h3>Nome do Administrador: <?php echo $_SESSION['NomeAdmin']; ?></h3>
                <div class="separador"></div>
                <br>
                <p class="titulo">Cadastre novas perguntas por temas</p>
                <br>
                <form method="post" action="perguntas.php">
                <div class="divBusca">                                       
					<Select name="txtNomeMateria" class="txtBusca">
						<?php
							$sql = "select id_materia, temas from tbMateria;";
							$resultado = mysqli_query($conexao, $sql) or die (mysqli_error());
							
							while($linha = mysqli_fetch_assoc($resultado)){
							?>
							<option value="<?php echo $linha["id_materia"]; ?>"><?php echo $linha["temas"]; ?></option>
							<?php
							}
						?>
                    </Select>				
                </div>
					<br>
					<br>
                    <label class="texto">Edição</label>
                    <input type="text" name="txtEdicao" class="txtEdicao"/>
                    <label class="texto">&nbsp;&nbsp;&nbsp;&nbsp;Banca</label>
                    <input type="text" name="txtBanca" class="txtEdicao"/>
                    <label class="texto">&nbsp;&nbsp;&nbsp;&nbsp;Prova</label>
                    <input type="text" name="txtProva" class="txtEdicao"/>
                    <br>
                    <br>
                    <p align="left">Enunciado</p>
                    <textarea name="txtEnunciado" class="txtEnunciado"></textarea>
					<p align="center">Escreva a alternativa e do lado insira se é correta ou errada</p>
					<br>
                    <label class="alternativa" align="left">Alternativa 1 &nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <input type="text" name="txtAlternativaUm" class="txtAlternativaUm"/>
					<select name="txtValorUm" class="txtValorUm">
                        <option value="0">Errada</option>
                        <option value="1">Correta</option>
                    </select>
					<br>
                    <label class="alternativa" align="left">Alternativa 2 &nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <input type="text" name="txtAlternativaDois" class="txtAlternativaUm"/>
                    <select name="txtValorDois" class="txtValorUm">
                        <option value="0">Errada</option>
                        <option value="1">Correta</option>
                    </select>
					<br>
                    <label class="alternativa" align="left">Alternativa 3 &nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <input type="text" name="txtAlternativaTres" class="txtAlternativaUm"/>
					<select name="txtValorTres" class="txtValorUm">
                        <option value="0">Errada</option>
                        <option value="1">Correta</option>
                    </select>
					<br>
                    <label class="alternativa" align="left">Alternativa 4 &nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <input type="text" name="txtAlternativaQuatro" class="txtAlternativaUm"/>
					<select name="txtValorQuatro" class="txtValorUm">
                        <option value="0">Errada</option>
                        <option value="1">Correta</option>
                    </select>
                    <br>
                    <br>
                    <br>
                    <input type="submit" name="Cadastrar" class="btnCadastrar" value="Cadastrar"/>
                </form>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <div class="separador"></div>
                <p class="titulo">Exclua perguntas</p>
                <br>
                    <form method="post" action="excluirPeguntas.php">
                        <label class="texto">Informe o Id da Questao&nbsp;&nbsp;&nbsp;&nbsp;</label>
                        <input type="text" name="txtExcluir" class="txtValorUm">
                        <br>
                        <br>
                    <input type="submit" name="Excluir" class="btnCadastrar" value="Excluir"/>
                    </form>
                <br>
                <br>
                <br>
                <div class="separador"></div>
                <p class="titulo">Altere as perguntas</p>
            </div>
        </div>
    </body>
</html>
<!--sna-->