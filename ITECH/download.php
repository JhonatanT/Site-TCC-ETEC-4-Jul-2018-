<?Php
    session_start();//iniciando as variaveis globais
    echo"<style> body{ position: relative; text-align:left; color: white; } </style>";
?>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <title>Download - Gennius</title>
        <link rel="stylesheet" href="../ITECH/cssIndex/daowload.css">
        <link rel="stylesheet" href="../ITECH/cssIndex/menu.css">
        <link rel="stylesheet" href="../ITECH/style.css">
        <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
        <link rel="shortcut icon" href="imagens/favicon.ico" type="image/x-icon" />
    </head>
    <body>
        <script>
            function myFunction(x) {
            x.classList.toggle("change");
            }
        </script>
        <div class="tudo">
        <header class="cabecalho1">
            <div class="container"onclick="document.getElementById('check').checked = !document.getElementById('check').checked; myFunction(this)" >
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
                    <li><a href = "perfil.php" title="Perfil de úsuario"><?php echo $_SESSION['usuarioNome']; ?></a><span class="icon-user"></span></li>
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
            <div class="download">
                <img class="logo" src="pictures/fundoMenu.png">
                <label>Utilize o Gennius também offline!</label>
                <p class="descricao">Você é estudante? Precisa de uma ajuda para estudar? Apresentamos o Gennius, um software criado para auxiliar você nos estudos. Com duas versões disponíveis, a offline e a online, direcionamos o melhor em relação a conhecimentos gerais para diversos vestibulares, tais como: ENEM, FUVEST, FATEC, UNESP, UNIFESP, UFRJ, UFMG e todos os principais meios de acesso a universidades públicas e privadas.</p>
                <button class="botao">Download para Windows</button>
                <p class="termos">
                    Ao fazer o download, você concorda com os <a href="">Termos e Condições</a>.
                </p>
            </div>
            <footer>
                <p>Todos os direitos reservados © 2018</p>
            </footer>
        </div>
    </body>
</html>