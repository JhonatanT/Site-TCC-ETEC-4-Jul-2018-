<?Php
    session_start();
?>
<!DOCTYPE HTML>
<html lang="PT-BR">
    <head>
        <meta charset="UTF-8">
        <meta name="descriprion" content="">
        <title>Enem</title>
        <link rel="stylesheet" href="../ITECH/cssIndex/enem.css">
        <link rel="stylesheet" href="../ITECH/cssIndex/menu.css">
        <link rel="stylesheet" href="../ITECH/style.css">
        <link rel="shortcut icon" href="imagens/favicon.ico" type="image/x-icon" />
    </head>
    <body>
        <script>
        function myFunction(x) {
        x.classList.toggle("change");
        }
        </script>
        <main>
            <div class="content-all">
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
                        <br>
                        <center>
                            <?php
                                echo $_SESSION['usuarioNome'];
                                echo"<style>
                                    body
                                    {
                                        position: relative;
                                        text-align:left;
                                        color: white;
                                    }
                                </style>";
                            ?>
                        </center>
                        <ul>
                            <li><a href = "index.html" title="Inicio"><span class="icon-home"></span>&nbsp &nbsp Matérias</a></li>
                            <li><a href = "DESEMPENHO.html" title="Desempenho"><span class="icon-pie-chart"></span>&nbsp &nbsp Desempenho</a></li>
                            <li><a href = "EXERCICIOS.html" title="Exercicios"><span class="icon-list-numbered"></span>&nbsp &nbsp Exercícios</a></li>
                            <li><a href = "gabaritos.html" title="Gabaritos"><span class="icon-checkmark"></span>&nbsp &nbsp Gabaritos</a></li>
                            <li><a href = "enem.html" title="Enem"><span class="icon-books"></span>&nbsp &nbsp Enem</a></li>
                            <li><a href = "redacao.html" title="Redação"><span class="icon-pencil"></span>&nbsp &nbsp Redação</a></li>
                            <li><a href = "pdf.html" title="Pdf's para estudo"><span class="icon-file-pdf"></span>&nbsp &nbsp PDF para estudos</a></li>
                            <li><a href = "download.html" title="Downloads"><span class="icon-download"></span>&nbsp &nbsp  Download</a></li>
                            <li><a href = "FaleConosco.html" title="Fale Conosco"><span class="icon-bubbles4"></span>&nbsp &nbsp Fale Conosco</a></li>
                            <li><a href = "AJUDA.html" title="Ajuda"><span class="icon-question-mark"></span>&nbsp &nbsp &nbsp Ajuda</a></li>
                            <li><a href = "sair.php" title="Sair"><span class="icon-cross"></span>&nbsp &nbsp Sair</a></li>
                        </ul>
                    </nav>
                </header>
            </div>
        </main>
    </body>
</html>