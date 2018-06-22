<?Php
    session_start();
    echo"<style> body{ position: relative; text-align:left; color: white; } </style>";
?>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <title>PDf para estudo</title>
        <link rel="stylesheet" href="../ITECH/cssIndex/menu.css">
        <link rel="stylesheet" href="../ITECH/cssIndex/pdf.css">
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
            <div class="arquivos">
                <ul>
                    <h3>Matemática</h3>
                    <li>Expressões Numéricas<button><a href="pdf/matematica/EXPRESSOES_NUMERICAS.pdf">Baixar</a></button></li>
                    <li>Geometria plana e espacial<button><a href="pdf/matematica/geometria.pdf">Baixar</a></button></li>
                    <li>Máximo divisor comum e Mínimo múltiplo comum <button><a href="pdf/matematica/mdc_mmc.pdf">Baixar</a></button></li>
                    <li>Números Naturais<button><a href="pdf/matematica/numeros_naturais.pdf">Baixar</a></button></li>
                    <li>Número Racionais<button><a href="pdf/matematica/numeros_racionais.pdf">Baixar</a></button></li>
                    <li class="separador"></li>
                    
                    <h3>Português</h3>
                    <li>Trovadorismo, Humanismo, Classicismo, Barroco, Arcadismo<button><a href="pdf/Portugues/trovadorismo.pdf">Baixar</a></button></li>
                    <li>Figuras de linguagem<button><a href="pdf/Portugues/figuras_de_linguagem.pdf">Baixar</a></button></li>
                    <li>Modernismo<button><a href="pdf/Portugues/modernismo.pdf">Baixar</a></button></li>
                    <li>Realismo e Naturalismo<button><a href="pdf/Portugues/realismo_naturalismo.pdf">Baixar</a></button></li>
                    <li class="separador"></li>
                    
                    <h3>Física</h3>
                    <li>Complemento de Cinemática<button><a href="pdf/fisica/complemento_86.pdf">Baixa</a></button></li>
                    <li>Hidroestática<button><a href="pdf/fisica/hidrostatica.pdf">Baixar</a></button></li>
                    <li>Leis de Newton<button><a href="pdf/fisica/leis_newton.pdf">Baixar</a></button></li>
                    <li>Óptica<button><a href="pdf/fisica/optica.pdf">Baixar</a></button></li>
                    <li>Ordem de Grandeza<button><a href="pdf/fisica/ordem_de_grandeza.pdf">Baixar</a></button></li>
                    <li>Sistemas de unidades<button><a href = "pdf/fisica/unidades.pdf">Baixar</a></button></li>
                    <li>Termologia<button><a href = "pdf/fisica/termologia.pdf">Baixar</a></button></li>
                    <li class="separador"></li>
                    
                    <h3>Biologia</h3>
                    <li>Bioquímica<button><a href="pdf/Biologia/bioquimica.pdf">Baixar</a></button></li>
                    <li>Classificação Biológica<button><a href="pdf/Biologia/classificacao.pdf">Baixar</a></button></li>
                    <li>Estudo da célula<button><a href="pdf/Biologia/celula.pdf">Baixar</a></button></li>
                    <li>Fisiologia Geral<button><a href="pdf/Biologia/filosofia_geral.pdf">Baixar</a></button></li>
                    <li>Metabolismo celular<button><a href="pdf/Biologia/metabolismo.pdf">Baixar</a></button></li>
                    <li>Histologia<button><a href="pdf/Biologia/72.pdf">Baixar</a></button></li>
                    <li class="separador"></li>
                    
                    <h3>Quimica</h3>
                    <li>Atomística<button><a href="pdf/quimica/atomistica.pdf">Baixar</a></button></li>
                    <li>Físico-Química<button><a href="pdf/quimica/termodinamica.pdf">Baixar</a></button></li>
                    <li>Química Inorgânica<button><a href="pdf/quimica/quimica_inorganica.pdf">Baixar</a></button></li>
                    <li>Química orgânica<button><a href="pdf/quimica/quimiica_organica.pdf">Baixar</a></button></li>
                    <li class="separador"></li>
                    
                    <h3>História</h3>
                    <li>Brasil Colônia<button><a href="pdf/historia/brasil_colonia.pdf">Baixar</a></button></li>
                    <li>Idade Média<button><a href="pdf/historia/idade_media.pdf">Baixar</a></button></li>
                    <li>Pré-história<button><a href="pdf/historia/historia_antiga.pdf">Baixar</a></button></li>
                    <li class="separador"></li>
                    
                    <h3>geografia</h3>
                    <li>Energia no Brasil<button><a href="pdf/Geografia/energia_brasil.pdf">Baixar</a></button></li>
                    <li>Geografia fisica<button><a href="pdf/Geografia/geografia_fisica.pdf">Baixar</a></button></li>
                    <li>Geografia humana<button><a href="pdf/Geografia/geografia_humana.pdf">Baixar</a></button></li>
                    <li>Geografia Regional - Brasil<button><a href="pdf/Geografia/Geo_Reg_LIVRO_WEB.pdf">Baixar</a></button></li>
                    <li>Geografia Regional - Mundo<button><a href="pdf/Geografia/geografia_mundo.pdf">Baixar</a></button></li>
                    <li>Recursos Minerais<button><a href="pdf/Geografia/recursos_minerais.pdf">Baixar</a></button></li>
                    <li class="separador"></li>
<!--                    filosofia-->
                    <h3>Filosofia</h3>
                    <li>Visão filosófica<button><a href="pdf/Filosofia/visao_filosofica.pdf">Baixar</a></button></li>
                    <li class="separador"></li>
<!--                    sociologia-->
                    <h3>Sociologia</h3>
                    <li>Fundamentos da Sociologia<button><a href="pdf/sociologia/fundamentos.pdf">Baixar</a></button></li>
                    <li>Natureza e Cultura<button><a href="pdf/sociologia/natureza.pdf">Baixar</a></button></li>
                    <li>Sociologia no Brasil<button><a href="pdf/sociologia/sociologia_brasil.pdf">Baixar</a></button></li>
                    <li class="separador"></li>
<!--                    artes-->
                    <h3>Artes</h3>
                    <li>Arte Comtemporânea<button><a href="pdf/Artes/boletim-68.pdf">Baixar</a></button></li>
                    <li>Arte Moderna no Brasil<button><a href="pdf/Artes/arte_moderna.pdf">Baixar</a></button></li>
                    <li>Arte na Grécia Antiga<button><a href="pdf/Artes/a_cult_agora.pdf">Baixar</a></button></li>
                    <li>Arte no Egito Antigo<button><a href="pdf/Artes/Arte-no-Egito-Antigo.pdf">Baixar</a></button></li>
                    <li class="separador"></li>
                    <h3>inglês</h3>
                    <li>Inglês básico<button><a href="pdf/Ingles/ingles.pdf">Baixar</a></button></li>
                    <li class="separador"></li>
                </ul>
                <footer>
                 <p>Todos os direitos reservados © 2018</p>
                </footer>
            </div>
        </div>
    </body>
</html>