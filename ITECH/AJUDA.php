
<!--
<?Php
    session_start();//iniciando as variaveis globais
    echo"<style> body{ position: relative; text-align:left; color: white; } </style>";
?>
-->
<DOCTYPE HTML!>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <title>Ajuda</title>
        <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
        <link rel="stylesheet" href="../ITECH/cssIndex/menu.css">
        <link rel="stylesheet" href="../ITECH/cssIndex/ajuda.css">
        <link rel="stylesheet" href="../ITECH/style.css">
        <link rel="shortcut icon" href="imagens/favicon.ico" type="image/x-icon" />
        <script>
            function myFunction(x) {
            x.classList.toggle("change");
            }
        </script>
    </head>
    <body>
        <div class="tudo">
            <header class="cabecalho1">
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
                    <ul>
                        <li><a href = "perfil.php" title="Perfil de úsuario"><?php echo $_SESSION['usuarioNome']; ?></a><span class="icon-user"></span> </li>
                        <li><a href = "materias.php" title="Inicio"><span class="icon-lab"></span> Matérias</a></li>
                        <li><a href = "DESEMPENHO.php" title="Desempenho"><span class="icon-chart"></span> Desempenho</a></li>
                        <li><a href = "gabaritos.php" title="Gabaritos"><span class="icon-checkmark"></span> Gabaritos</a></li>
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
        <div class="topicos">
            <h1>Duvidas Frequentes:</h1>
            <div class="separador"></div>
            <h2>• Como visualizar meu Desempenho no Site?</h2>
            <p>Abra o menu lateral e clique na opção "<a href="DESEMPENHO.php">Desempenho</a>"<br>
                Nesta página o usuário terá acesso a sua porcetagem de desenvlvimento em determinadas materias.
<!--                terminar essa -->
            </p>
            <div class="separador"></div>
            <h2>• Como baixar a versão desktop?</h2>
            <p>Para baixar a versão desktop do Gennius será necessário acessar o menu lateral e clicar na aba <a href="download.php">Download.</a><br>
                Ao acessar a página Download, procure pelo botão "Download para windows" e clique logo o download será inicido. 
                Download feito, abra o programa, aceitar os termos de uso e instale.
            </p>
            
            <div class="separador"></div>
            <h2>• Como ficar atualizado nas datas de vestibulares?</h2>
            <p>Para visualizar o calendário de vestibulares, o usuário deverá ter o software instalado em seu computador e então deverá acessar o menu lateral e clicar em 'calendário'.<br>
            Assim o usuário terá acesso aos vestibulares mais recentes que acontecerão no Brasil.</p>
            <div class="separador"></div>
            <h2>• Como posso visualizar o meu Desempenho no software?</h2>
            <p>Primeiramente, para ter um desempenho o usuário terá que interagir no software, responda questões de diferentes temas para o calculo de seu aproveitamento.<br>
            Abra o menu lateral e clique em "Desempenho" e então visualize todo o seu aproveitamento no Gennius.
            </p>
            <div class="separador"></div>
        </div>
        <footer>
            <p>Todos os direitos reservados © 2018</p>
        </footer>
        </div>
    </body>
</html>