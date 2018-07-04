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
    //pegando o id da Materia para fazer a comparacao lá na frente
	$idMateriaFora = $_GET["id"];
    //pegando o id da Questão para fazer a comparacao lá na frente
	$idQuestao = isset($_GET["questao"]) ? $_GET["questao"] : 0;

    //função para verificar se o usuario clicou no botão finalizar
    function verificaBotao($nome){
        $parametros = func_get_args();
        
        foreach ($parametros as $nome){
            if(isset($_POST[$nome])){
                return $nome;
            }
        }
    }
	/**retorna o próximo id ou -1 se não houver*/
			function pegaProximoId($idQuestaoAtual, $idMateria){
		
			$host="localhost";
			$root="root";
			$senha="1234";
			$bd="GenniusDB";
			$conexao = mysqli_connect($host, $root, $senha, $bd) or die (mysqli_error());
			mysqli_set_charset( $conexao, 'utf8');
			mysqli_select_db($conexao, $bd) or die(mysqli_error());
		
			$consulta = "SELECT Q.id_questao FROM tbquestao AS Q 
			INNER JOIN tbMateria AS M ON Q.cod_materia = M.id_materia 
			LEFT JOIN tbAlternativa AS A ON  A.cod_questao = Q.id_questao
			WHERE M.id_materia = '$idMateria' and Q.id_questao > '$idQuestaoAtual' 
			ORDER BY Q.id_questao
			limit 1;";
		
			$consulta = mysqli_query($conexao, $consulta) or die ($consulta->error);
		
			if($linha = mysqli_fetch_array($consulta)){
				return $linha['id_questao'];
			}
			return -1;
			}
	


    echo"<style> body{ position: relative; text-align:left; color: white; } </style>";
    //query para pegar o enunciado, imagem,id entre outros da questao
	$query = "SELECT Q.id_questao, Q.edicao,Q.banca,Q.prova, Q.enunciado,M.temas,Q.caminho,Q.nome_imagem,
	A.texto, A.correta FROM tbquestao AS Q 
	INNER JOIN tbMateria AS M ON Q.cod_materia = M.id_materia 
	LEFT JOIN tbAlternativa AS A ON  A.cod_questao = Q.id_questao
	WHERE M.id_materia = '$idMateriaFora' and Q.id_questao > '$idQuestao' ORDER BY Q.id_questao limit 1;";
    //criando a consulta
	$con = mysqli_query($conexao, $query) or die ($query->error);
    //query para pegar o enunciado da tabela Questao
	$enunciado = "SELECT id_Questao enunciado from tbQuestao;";
	$Nome = $_SESSION['usuarioNome'];
    $idUsu = $_SESSION['usuarioId'];


    $acerto = mysqli_query($conexao, "select acerto from TbAcertoErro where nome_usu='$Nome'") or die (mysqli_error());
    $acerto = mysqli_fetch_assoc($acerto);

    $erro = mysqli_query($conexao, "select erro from TbAcertoErro where nome_usu='$Nome'") or die (mysqli_error());
    $erro = mysqli_fetch_assoc($erro);


    $_SESSION['acerto'] = $acerto['acerto'];
    $_SESSION['erro'] = $erro['erro'];



    $erro = $_SESSION['erro'];
    $acerto = $_SESSION['acerto'];

    $a = 0 + $acerto;
    $e = 0 + $erro;

    
	
?>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <title>Exercícios - Gennius</title>
        <link rel="stylesheet" href="../ITECH/cssIndex/exercicio.css">
        <link rel="stylesheet" href="../ITECH/cssIndex/menu.css">
        <link rel="stylesheet" href="../ITECH/style.css">
          <link href="https://fonts.googleapis.com/css?family=Quicksand:300" rel="stylesheet">
        <link rel="shortcut icon" href="imagens/favicon.ico" type="image/x-icon" />
        <script>
        function myFunction(x) {
        x.classList.toggle("change");
        }
        </script>
    </head>
    <body>
		<?php 
            //usando switch case pra verificar qual botao o usuario clicou
			switch (verificaBotao('botaoFinalizar','botaoEnviar')){
                //caso foi o Finalizar
				case 'botaoEnviar':
                    //criando uma variavel que vai receber o valor do radio button
					$escolha = $_POST["$idQuestao"];
                    //se o valor do radio button for igual a 1
					if($escolha == 1){
					    $a++;
					}else{
                        $e++;
					}
                    $sql = mysqli_query($conexao, "SELECT * FROM TbAcertoErro WHERE id_usu = '$idUsu' LIMIT 1") or die (mysqli_error());
                    $row = mysqli_fetch_assoc($sql);
                    if ($row > 0){
                        $sqlA = "update TbAcertoErro set acerto = '$a' WHERE id_usu ='$idUsu'";
                        $sqlE = "update TbAcertoErro set erro = '$e' WHERE id_usu ='$idUsu'";
                        mysqli_query($conexao, $sqlA);
                        mysqli_query($conexao, $sqlE);
                    }
                    else{
                        $sql = "INSERT INTO TbAcertoErro(acerto, erro, nome_usu) values('$a', '$e', '$Nome')";
                        mysqli_query($conexao, $sql);
                    }
				break;
                //caso foi o Finalizar        
				case 'botaoFinalizar':
                    //criando uma variavel que vai receber o valor do radio button
					$escolha = $_POST["$idQuestao"];
                     //se o valor do radio button for igual a 1
					if($escolha == 1){
                        $a++;
					}else{
                        $e++;
					}
                    $sql = mysqli_query($conexao, "SELECT * FROM TbAcertoErro WHERE id_usu = '$idUsu' LIMIT 1") or die (mysqli_error());
                    $row = mysqli_fetch_assoc($sql);
                    if ($row > 0){
                        $sqlA = "update TbAcertoErro set acerto = '$a' WHERE id_usu ='$idUsu'";
                        $sqlE = "update TbAcertoErro set erro = '$e' WHERE id_usu ='$idUsu'";
                        mysqli_query($conexao, $sqlA);
                        mysqli_query($conexao, $sqlE);
                    }
                    else{

                        $sql = "INSERT INTO TbAcertoErro(acerto, erro, nome_usu) values('$a', '$e', '$Nome')";
                        mysqli_query($conexao, $sql);
                    }

                    //redirecione o usuario pra pagina de desempenho
                    //se preciso mude a extenção html para php
                    header("location: DESEMPENHO.php");
			}
		?>

            <div class="content-all">
                <header class="cabecalho1">
                    <br>
                    <div class="container" onclick="document.getElementById('check').checked = !document.getElementById('check').checked; myFunction(this)">
                        <div class="bar1 icon-content"></div>
                        <div class="bar2 icon-content"></div>
                        <div class="bar3 icon-content"></div>
                    </div>
                    <input type="checkbox" id="check">
                    <nav class="menu">	
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <ul>
                            <li><a href = "perfil.php" title="Perfil de úsuario"><?php echo $_SESSION['usuarioNome']; ?></a><span class="icon-user"></span> </li>
                            <li><a href = "materias.php" title="Inicio"><span class="icon-lab"></span> Matérias</a></li>
                            <li><a href = "DESEMPENHO.php" title="Desempenho"><span class="icon-chart"></span> Desempenho</a></li>
                            <li><a href = "enem.php" title="Enem"><span class="icon-open-book"></span> Enem</a></li>
                            <li><a href = "redacao.php" title="Redação"><span class="icon-lightbulb_outline"></span> Dicas para o ENEM</a></li>
                            <li><a href = "pdf.php" title="Pdf's para estudo"><span class="icon-file-pdf-o"></span> PDF para estudos</a></li>
                            <li><a href = "download.php" title="Downloads"><span class="icon-download"></span>  Download</a></li>
                            <li><a href = "FaleConosco.php" title="Fale Conosco"><span class="icon-bubbles4"></span> Fale Conosco</a></li>
                            <li><a href = "AJUDA.php" title="Ajuda"><span class="icon-checkmark"></span> Ajuda</a></li>
                            <li><a href = "login.php" title="Sair"><span class="icon-x"></span> Sair</a></li>
                        </ul>
                    </nav>
                </header>
                <div class="materia">
                    <label id="nomeMateria"></label>
                </div>
            <div class="perguntas">                  
					<?php 
					//ariavel que vai criar a consulta da query da questao
					if($linha = mysqli_fetch_array($con)){
                        //guardando o enunciado da questão dentro da variavel enuncia
						$enuncia = $linha['enunciado'];
                        //guaradando o id da questao na variavel IdQuestao
						$idQuestao = $linha['id_questao'];
                        //guardando a imagem da questao na variavel imagem
                        $imagem = $linha['nome_imagem'];
						//guardando o caminho da questao na varialve caminho
                        $caminho = $linha['caminho'];
                        //query para pegar as alternativas de acordo com o id da questao
						$QueryComparaAlternativa = "SELECT id_alternativa, texto, correta from tbAlternativa where cod_questao = '$idQuestao' limit 5;";
                        //consulta da query de comparacao
						$ConsultaDeComparacao = mysqli_query($conexao, $QueryComparaAlternativa) or die ($QueryComparaAlternativa->error);
                        //se enuncia(enunciado que veio da query da questao) for igual ao enunciado(enunciado que veio da query enunciado)
						if ($enuncia == $enuncia){ 
					   ?>
                <!--guardando o idMateriaFora dentro do id e o idQuestao dentro do questao para quando o usuario clicar em proximo vá para proxima questao-->
					   <form method="Post" action="EXERCICIOS.php?id=<?php echo trim($idMateriaFora); ?>&questao=<?php echo trim($idQuestao); ?>">
						<center><label></label></center>
                        <label>
                            <?php 
                            //if lá em cima^
                            //  mostre a edicao da questao
                                echo $linha['edicao']; 
                                echo " ";
                            //  mostre a banca da questao
                                echo $linha['banca']; 
                                echo " ";
                            //  mostre a prova da questao
                                echo $linha['prova']; 
                            ?>
                        </label>
                        <!-- mostre o enunciado da questao -->
                        <p id="p1"><?php echo $linha['enunciado']; ?></p>
                    
                        <?php 
                            //se a variavel imagem for diferente de vázio
							if($imagem != "")
						{ ?>
                        <!-- if aqui em cima^                  mostre a imagem -->
                            <center><img src="pictures/ImgQues/<?php echo $caminho ?>/<?php echo $imagem ?>.png" align="center"/></center>
							<?php 
						}
						//enquanto tiver linhas na variavel linhaAlternativa
                            //mostre elas
						while($linhAlternativa = mysqli_fetch_array($ConsultaDeComparacao)){
						?>
							<label><input type="radio" class="option-input radio" name="<?php echo $idQuestao; ?>" value="<?php echo $linhAlternativa['correta'];?>" required="required" /><?php echo $linhAlternativa['texto']; ?></label>   
						<?php 
						} ?>
					<?php
                        //se pegaProximoId for maior do que menos um
                            //mostre o botao Proximo
						if(pegaProximoId($idQuestao, $idMateriaFora) > -1)
						{
						?>
                            <!-- provavelmente é nesse if aqui -->
							<br>
							<br>
							<br>
							<br>
							<input  type="submit" value="Proximo" name="botaoEnviar">
							<?php
						}
                        //se não
                            //mostre o botao Finalizar
						else{
						?>	
							<br>
							<br>
							<br>
							<br>

							<input type="submit" value="Finalizar"  name="botaoFinalizar">
						<?php
						}
					}
					}
                    /** um caso a parte
                    
					   Problemas: 
                        1º Como guardar os valores da radio selecionada pelo usuario e ir para proxima pergunta
                        ou 
                        2º como ver se o usuario acertou a pergunta antes de ir para a proxima
                        
                        Se escolhermos a primeira alternativa das que listei anteriormente como eu mostro se ele acertou ou não
                        todas as alternativas na pagina resposta.
                    **/
                    ?>
            </form>
        </div>
    </div>
			<br>
            <br>
            <br>
    </body>
</html>