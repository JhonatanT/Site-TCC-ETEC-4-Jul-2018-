<!DOCTYPE html>
    <html>
        <head>
            <title>Itech Force</title>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="../ITECH/cssIndex/estilo2.css">
            <link rel="stylesheet" href="../ITECH/cssIndex/estilo.css">
            <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
            <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
             <script>
              jQuery(document).ready(function($) {
                $(".scroll").click(function(event){
                    event.preventDefault();
                    $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
                });
              });
             </script>
        </head>
        <body>

            <div class="w3-sidebar w3-bar-block w3-card w3-animate-left w3-azul" style="display:none" id="mySidebar">
            <button class="w3-bar-item w3-button w3-large w3-hover-grey link"onclick="w3_close()" >&times;</button>
            <a  href="#Sobre" class="w3-bar-item w3-button w3-hover-grey link scroll" >Sobre Nós </a>
            <a  href="#Projetos" class="w3-bar-item w3-button w3-hover-grey link scroll" >Projetos </a>
            <a  href="#Clientes" class="w3-bar-item w3-button w3-hover-grey link scroll" >Clientes </a>
            <a  href="#Fale" class="w3-bar-item w3-button w3-hover-grey link scroll" >Fale Conosco </a>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <a  href="Login.php" class="w3-bar-item w3-button w3-hover-red link" >Acesso Restrito </a>
            </div>

            <div id="main">

                <div class=" w3-bar-block" style="position:fixed">
                    <button id="openNav" class="w3-button w3-xlarge w3-hover-grey verde" onclick="w3_open()">&#9776;</button>
                    <div class="w3-container w3-bar-block"></div>
                </div>
                <img src="../ITECH/imagens/index.png" alt="Car" class="block" style="width:100%">
                
                <div class="w3-container containerLogo" id="Sobre" ></div>
                
                <div class="w3-container escuro" align="left">
                    <br><br>
                    <h1 class=" w3-container centralizadoEscuro">SOBRE NÓS</h1>
                    <div class="w3-container centro p" align="center">
                        <p>Somos uma empresa tecnológica focada no desenvolvimento<br> 
                        de softwares, desginer de sites e manutenção de computadores.<br> 
                        Fundada em 2017, atende com dedicação e compromentimento,<br>
                        visando uma parceria íntegra e ética para com seus clientes<br>
                        garantindo o melhor serviço do ramo tecnológico</p>

                        <p><strong>Qual o significado de ITech Force?</strong></p>

                        <p><strong>I: </strong>Inteligência.
                        <strong>Tech: </strong>Tecnologia.
                        <strong>Force: </strong>Força.</p>
                    </div>
                    <br><br><br>
                </div>
                
                <div class="w3-container containerLogo" id="Projetos" ></div>
                
                <div class="w3-container claro" align="left">
                    <br><br>
                    <h1 class="w3-container centralizado" >PROJETOS</h1>
                        <div class="w3-container centro p" align="center">
                        <p>Estamos desenvolvendo um projeto intitulado como <strong>GENIUS</strong>, onde ajudamos pessoas<br> 
                        que querem estudar pra vestibular mas não tem acesso a internet,<br> 
                        ou não sabe o que estudar. O projeto é voltado para estudos de<br>
                        vestibulares/vestibulinhos como por exemplo:
                        <strong> ENEM, FUVEST, SENAI e ETEC.</strong><br>
                        Esses são os vestibulares iniciais, mais para frente implementaremos outras opções.<br>
                        O programa ainda está em fase de desenvolvimento, então estamos desenvolvendo as funcionalidades do mesmo.<br>
                        <br><br>
                        Veja a interface gráfica dele:<br> 
                    </div>
                    <br><br><br>
                </div>
                
                <div class="w3-container containerLogo" id="Clientes" ></div>
                
                <div class="w3-container escuro" align="left">
                    <br><br>
                    <h1 class="w3-container centralizadoEscuro">CLIENTES</h1>
                        <div class="w3-container centro p" align="center">
                        <p>Lembre-se que os textos abaixo são apenas exemplos.<br> 
                        Quanto mais personalizados ficarem, mais seu site vai<br> 
                        se destacar. Originalidade é um importante critério que<br>
                        o Google usa para ranquear páginas. Procure usar<br>
                        sinonimos dos verbos que escrevemos.<br>
                        Um bom dicionário sempre oferece várias opções de <br>
                        termos com o mesmo sentido.</p>

                        <p class="p">Modelos de texto para a página “Quem Somos” ao criar site online no Sitepx:</p>

                        <p>Lembre-se que os textos abaixo são apenas exemplos.<br> 
                        Quanto mais personalizados ficarem, mais seu site vai<br> 
                        se destacar. Originalidade é um importante critério que<br>
                        o Google usa para ranquear páginas. Procure usar<br>
                        sinonimos dos verbos que escrevemos.<br>
                        Um bom dicionário sempre oferece várias opções de <br>
                        termos com o mesmo sentido.</p> 
                    </div>
                    <br><br><br>
                </div>
                
                <div class="w3-container containerLogo" id="Fale" ></div>
                
                <div class="w3-container claro" align="left">
                    <br>
                    <br>
                    <h1 class="w3-container centralizado">FALE CONOSCO</h1>
                    <div class="w3-container" align="center">
                        <br><br><br><br>
                        <div class="formulario" align="left">
                            <form name="formPedido" method="post" action="dados.php" >
                                <label align="left">Email</label>
                                <input type="text" name="txtEmail" placeholder="Insira o email">
                                <br><br>
                                <label align="left">Nome e Sobrenome</label>
                                <input type="text" name="txtNome" placeholder="Insira o nome e sobrenome">
                                <br><br>
                                <label align="left">Pedido</label>
                                <input type="text" name="txtPedido" placeholder="Insira o pedido">
                                <br><br>
                                <input type="submit" value="Enviar" name="botaoEnviar">
                                <br>
                            </form>
                        </div>
                    </div>
                    <br><br><br><br><br><br><br>
                </div>

            </div>

            <script>
                function w3_open() {
                  document.getElementById("main").style.marginLeft = "18%";
                  document.getElementById("mySidebar").style.width = "18%";
                  document.getElementById("mySidebar").style.display = "block";
                  document.getElementById("openNav").style.display = 'none';
                }
                function w3_close() {
                  document.getElementById("main").style.marginLeft = "0%";
                  document.getElementById("mySidebar").style.display = "none";
                  document.getElementById("openNav").style.display = "inline-block";
                }
            </script>

        </body>
</html>