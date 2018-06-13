create database GenniusDB;
use GenniusDB;

create table tbUsuario(
id_usuario int primary key not null auto_increment,
nome_completo varchar(50) not null,
email varchar(50)not null,
senha varchar(8) not null
);

insert into tbUsuario(id_usuario,nome_completo,email,senha)
values(default,'Gustavo Mendes Ribeiro','Gustavo.mendesribeiro@Yahoo.com.br','123123');


create table tbDisciplina(
id_disciplina int primary key auto_increment,
disciplinas varchar(20)
);

insert into tbDisciplina(disciplinas)
values
('Artes'),
('Biologia'),
('Filosofia'),
('Física'),
('Geografia'),
('História'),
('Inglês'),
('Matemática'),
('Português'),
('Química'),
('Sociologia');



create table tbMateria(
id_materia int primary key auto_increment,
temas varchar(50),
cod_disciplina int,
foreign key (cod_disciplina) references tbDisciplina(id_disciplina)
);

insert into tbMateria(temas,cod_disciplina)
values
-- Temas de História
('Segunda Guera Mundial', 6),
('Revolução Francesa',6),
('Independência do Brasil',6),
-- Temas  de Português
('Interpretação de texto',9),
('Vozes verbais',9),
('Figuras de linguagem',9),
-- Temas de Matemática
('Logaritimo',8),
('Geometria espacial',8),
('Análise combinatória',8);

select*from tbMateria;


create table tbQuestao(
id_questao int primary key not null auto_increment,
enunciado text(300),
banca char(10),
edicao varchar(10),
instituicao varchar(50),
prova varchar(20),
citacao varchar(200),
cod_materia int,
imagem varchar(50),
foreign key (cod_materia) references tbMateria(id_materia)

);

#Query dos materia das diciplinas
#select tbmateria.temas from tbdisciplina join tbmateria where tbdisciplina.disciplinas ='História' and tbmateria.cod_disciplina = 6;

/*drop table tbquestao;*/

insert into tbquestao(enunciado,banca,edicao,instituicao,prova,citacao,cod_materia,imagem)
values
-- Q1 Segunda Guerra Mundial - História 
	('O processo mundial de expansão e consolidação 
	das políticas sociais segue os efeitos do período 
	histórico em que há a(s):','FUNCAB','2014','SEDS-TO','Analista em Defesa Social - Serviço Social',null,1,null),

-- Q2 Segunda Guerra Mundial - História 
	('A bipolarização do poder mundial – que 
	  vigorou desde o fim da Segunda Guerra Mundial 
	  até o final da década de 80 – manteve o mundo 
	  em permanente tensão, embora sem provocar 
	  confrontos armados diretos entre EUA e URSS. 
	  Este período ficou conhecido como:',null,null,null,null,null,1,null),
  
-- Q3 Segunda Guerra Mundial - História 
  ('Os homens e as mulheres conhecidos como 
	“soldados da borracha” foram importantes 
    para os esforços do Brasil na Segunda 
    Guerra Mundial como os pracinhas 
    da Força Expedicionária Brasileira (FEB) 
    foram nos campos de batalha da Itália. 
    Considerando essas informações, 
    é correto afirmar que os “soldados da borracha”:', 'MOVENS','2009', 'PC-PA', 'Investigador',null,1,null),
    
-- Q4 Segunda Guerra Mundial - História 
	('A Segunda Guerra Mundial (1939-1945) 
      é, geralmente, considerada o grande 
      momento de inflexão do século XX. 
      Decorrência de duas décadas de 
      instabilidade política, comoção social e 
      crise econômica, ela foi o mais universalizado 
      dos conflitos e, ao chegar ao fim, gerou uma
      ordem internacional que se afastava dos padrões 
      vigentes, a rigor, desde a Idade Moderna.
      Relativamente aos fatores que determinaram o 
      início de hostilidades e às conferências 
      que estabeleceram as balizas do novo 
      cenário mundial, assinale a opção correta.', 'CESPE','2013','Instituto Rio Branco ','Diplomata - Prova 2',null,1,null),
      
-- Q5 Segunda Guerra Mundial - História 
	('Assinale a opção correta no 
      que diz respeito à análise da 
      economia brasileira na década 
      posterior ao fim da Segunda Guerra Mundial.','CESPE','2013','Instituto Rio Branco','Diplomata- Prova 2',null,1,null),
      
-- Q1 Revolução Francesa - História 
	('A imagem pode ser corretamente lida como uma','Fuvest','2016',null,null,null,2,'img-RevoluçãoFrancesa-Q1'),
	
-- Q2 Revolução Francesa - História 
	('A Revolução Francesa foi um dos momentos 
      mais importantes no processo de formação 
      do mundo contemporâneo. Foi um movimento 
      violento que sepultou o absolutismo na cena 
      política e o mercantilismo na economia, tendo um 
      papel de grande destaque a burguesia, interessada 
      em instituir um regime que atendesse aos seus 
      interesses. Durante a revolução tomou forma um 
      corpo legislativo denominado Assembleia Nacional, 
      que tomou parte central na consolidação das reformas 
      objetivadas pela revolução. Dentre as principais 
      reformas realizadas na fase moderada da Revolução Francesa 
      (1789-1791), pela Assembleia Nacional, 
      podemos citar CORRETAMENTE:', 'Pucpr','2016',null,null,null,2,null),

-- Q3 Revolução Francesa - História  
	('Leia o texto a seguir.
	  Socialmente, os sans-culottes representam 
	  os citadinos que vivem de seu trabalho, 
      seja como artesãos, seja como profissionais 
      de ofício; alguns, depois de uma vida laboriosa, 
      se tornam pequenos proprietários na cidade, e 
      usufruem as rendas de um imóvel.
      A análise do texto demonstra que os interesses 
      sociais dos sans-culottes, importantes personagens 
      da Revolução Francesa, se confundiam com os ','Ueg','2016',null,null,
      'PÉRONNET, Michel. Revolução Francesa em 50 Palavras-chaves. São Paulo: 
      Brasiliense, 1988. p. 248.',2,null),
      
-- Q4 Revolução Francesa - História        
	('Observe a obra do pintor Delacroix, intitulada A 
      Liberdade guiando o povo (1830), e assinale a alternativa correta.',
	  'Unicamp','2014',null,null,null,2,'img-RevoluçãoFrancesa-Q4'),
      
-- Q5 Revolução Francesa - História
	('“O Terror, que se tornou oficial durante certo tempo, é o instrumento usado para reprimir a contrarrevolução(...).
      É a parte sombria e mesmo terrível desse período da Revolução [Francesa], 
      mas é preciso levar em conta o outro lado dessa política.”
      São exemplos dos “dois lados” da política 
      revolucionária desenvolvida na França, 
      durante o período do Terror, ','Pucsp','2014',null,null,
	 'Michel Vovelle. A revolução francesa explicada 
	  à minha neta. São Paulo: Unesp, 2007, p. 74-75.',2,null),
      
-- Q1 Independência do Brasil - História  
	('A Constituição imperial brasileira, promulgada em 1824, 
      estabeleceu linhas básicas da estrutura e do 
	  funcionamento do sistema político imperial tais como o(a):','Cesgranrio',null,null,null,null,3,null),
      
-- Q2 Independência do Brasil - História
	('Assinale a opção que apresenta um fato
      que caracterizou o processo de reconhecimento 
      da Independência do Brasil pelas principais 
      potências mundiais:','Cesgranrio',null,null,null,null,3,null),
      
-- Q3 Independência do Brasil - História
	('No Brasil, durante o Primeiro Império, a situação financeira era precária, pelo fato de que:',
    'Fgv',null,null,null,null,3,null),
    
-- Q4 Independência do Brasil - História    
	('O reconhecimento da independência brasileira por Portugal foi devido principalmente:',
     'Fuvest',null,null,null,null,null,3,null),
     
-- Q5 Independência do Brasil - História
	('A organização do Estado brasileiro que se seguiu à Independência resultou no projeto do grupo:',
    'Fuvest',null,null,null,null,null,3,null),
    
# enunciado,banca,edicao,instituicao,descricao,citacao,cod_materia,imagem




select*from tbquestao;



create table tbAlternativa(
id_alternativa int primary key not null auto_increment,
texto nvarchar(100),
correta bool,
cod_questao int,
foreign key (cod_questao) references tbQuestao(id_questao)
);

insert into tbAlternativa(texto,correta,cod_questao)
values

-- Alternativas da Q1- Segunda Guerra de História  
/*A*/('crise mundial do petróleo e a flexibilização do trabalho.', false,1),
/*B*/('primeira grande crise do capital e as sequelas da Segunda Guerra Mundial.',true,1),
/*C*/('sequelas da Segunda Guerra Mundial e a flexibilização do trabalho.',false,1),
/*D*/('primeira grande crise do capital e a crise Mundial do petróleo.',false,1),

-- Alternativas da Q2 - Segunda Guerra de História  
/*A*/('Guerra Fria.' ,true,2),
/*B*/('Perestroika.', false,2),						
/*C*/('Glasnost.',false,2),
/*D*/('Holocausto. ',false,2),
/*E*/('Período Bipolar.',false,2),

-- Alternativas da Q3 - Segunda Guerra de História  
/*A*/('foram necessários para a construção de automóveis brasileiros durante a Segunda Guerra Mundial',false,3),
/*B*/('eram, em sua maioria, gaúchos',false,3),
/*C*/('eram os seringueiros que foram para a Amazônia durante a Segunda Guerra Mundial',true,3),
/*D*/('oram necessários para aumentar a produção de borracha no Brasil 
	   na Segunda Guerra Mundial, porque uma praga destruiu as seringueiras da Ásia',false,3),

-- Alternativas da Q4 - Segunda Guerra de História  
/*A*/('A Conferência de Potsdam definiu a internacionalização 
	   de Berlim e a divisão da Alemanha em duas áreas de 
       influência: a área sob influência da União Soviética e a sob influência dos EUA.',false,4),

/*B*/('Embora combatido por liberais, trotskistas e social-democratas, 
       o Pacto de Não-Agressão Germano-Soviético foi fundamental 
       para retardar o início da Segunda Guerra Mundial.',false,4),

/*C*/('A política da Paz Armada desencadeada por Hitler, ainda que 
       não necessariamente expansionista, abriu o caminho para a guerra, 
       por gerar desconfiança e temor generalizados.', false,4),

/*D*/('A Liga das Nações condenou a anexação da Áustria pela Alemanha 
       nazista, tendo sido veemente o protesto da França e da Inglaterra, 
       que romperam relações diplomáticas com Berlim.',false,4),

/*E*/('Em face de sua contribuição na luta contra o Reich nazista,
       a União Soviética teve o reconhecimento internacional reforçado 
       na Conferência de Teerã e, em lalta, assegurou sua influência no Leste Europeu.', true,4),

-- Alternativas da Q5 - Segunda Guerra de História   
/*A*/('A crise cambial de 1952 resultou, entre outros fatores, da defasagem 
      entre a concessão de licenças e a efetivação das importações, da queda 
      das exportações de algodão decorrente da crise da indústria têxtil mundial 
      e da quebra da safra de trigo nos EUA, que obrigou o governo brasileiro
      a importar da Argentina esse cereal, em condições menos favoráveis.',false,5),
 
/*B*/('Conforme apontado por Carlos Lessa na obra clássica Quinze anos de 
       Política Econômica, a industrialização “não intencional”, que corresponde 
       à política fiscal expansionista adotada no final dos anos 40, mesmo na 
       ausência de medidas de planejamento, teria fortalecido setores da 
       indústria brasileira.', false,5),
 
/*C*/('A Instrução 70, adotada, em 1953, pela Superintendência da Moeda e do Crédito,
	   órgão antecessor do Banco Central do Brasil, estabeleceu taxas múltiplas de 
	   câmbio, atribuindo taxas mais depreciadas à importação de máquinas, 
	   equipamentos e matérias-primas essenciais.', false, 5),
	 
/*D*/('O período em que a taxa de câmbio oficial manteve-se fixa (CR$ 18,50 por dólar) 
	   representou, na prática, vigorosa apreciação da taxa de câmbio nominal.', false,5),
 
/*E*/('A adoção da Instrução 113 da Superintendência da Moeda e do Crédito, 
	  que permitia a importação de bens de capital sem necessidade de cobertura 
	  cambial, não representou ruptura do tratamento vigente do capital estrangeiro. 
	  O governo Vargas, apesar da retórica nacionalista, já vinha adotando políticas 
	  que estimulavam a mobilização de recursos de origem externa e orientando 
	  inversões em setores prioritários.', true, 5),
 
-- Alternativas da Q1 - Revolução Francesa de História   
/*A*/('defesa do mercantilismo e do protecionismo comercial ingleses, 
       ameaçados pela cobiça de outros impérios, sobretudo o francês.',false,6),
 
/*B*/('crítica à monarquia inglesa, vista, no contexto
	   da expansão revolucionária francesa, como opressora 
       da própria sociedade inglesa.', true, 6),

/*C*/('alegoria das pretensões francesas sobre a Inglaterra, 
	   já que Napoleão Bonaparte era frequentemente considerado, 
       pela burguesia, um líder revolucionário ateu.',false,6),
 
/*D*/('apologia da monarquia e da igreja inglesas, 
       contrárias à laicização da política e dos 
	   costumes típicos da Europa da época.', false,6),
       
/*E*/('propaganda de setores comerciais ingleses, 
       defensores dos monopólios comerciais e 
       contrários ao livre-cambismo que, à época, 
       ganhava força no país.',false,6),      
       
-- Alternativas da Q2 Revolução Francesa de História  
/*A*/('Abolição dos privilégios especiais 
	   do clero e da nobreza; Declaração 
       dos Direitos do Homem e do Cidadão; 
       subordinação da Igreja ao Estado; 
       elaboração de uma constituição para 
       a França; reformas administrativas 
       e judiciárias; e ajuda à economia francesa.', true,7),
	
/*B*/('Declaração Universal dos Direitos Humanos; 
	   elaboração do Edito de Nantes, que dava liberdade 
	   religiosa para os não católicos; criação do Banco 
       da França; legalização da anexação dos territórios 
       da margem esquerda do Reno; elaboração do 
       Código Civil Francês.', false,7),
       
/*C*/('Criação do Código Civil Francês; criação do 
	   Banco da França; elaboração da Declaração 
       dos Direitos do Homem e do Cidadão; 
       elaboração das primeiras leis 
       trabalhistas que proibiam o 
       trabalho infantil; concessão do 
       direito ao voto às mulheres.', false, 7),
      
/*D*/('Direito de voto para todos os homens, 
	   independente da renda; favorecimento de 
       legislação que incentivava o capitalismo 
       comercial; reforma do sistema educacional 
       com a criação dos liceus clássicos e de ofícios; 
       maior autonomia para as províncias históricas 
       da França; criação de uma estrutura descentralizada de governo na França.', false, 7),
       
/*E*/('Regulamentação das leis trabalhistas na 
       França; extensão do direito de voto para 
       todos os homens e mulheres maiores de 18 anos; 
       reconhecimento do direito de minorias; criação do 
       Código Civil; a França se tornou uma confederação 
       descentralizada, dividida em cantões com alto grau 
       de autonomia política; elaboração da Constituição Civil do Clero.', false, 7),   

-- Alternativas da Q3 Revolução Francesa de História  
/*A*/('da pequena burguesia que, apesar 
      das conquistas econômicas, via-se 
      pressionada pelo aumento no custo de vida.', true, 8),

/*B*/('dos camponeses, já que ambos lutavam pela 
      abolição dos privilégios feudais no campo 
      e posse de terras coletivas.',false,8),
      
/*C*/('dos membros do baixo clero, uma vez 
       que lutavam por reformas sociais, 
	   mas não eram contra a liberdade religiosa.',false,8),

/*D*/('da classe dos girondinos, pois apesar 
      das diferenças de classe, ambos os 
      grupos eram politicamente moderados.',false,8),
      
-- Alternativas da Q4 Revolução Francesa de História        
/*A*/('Os sujeitos envolvidos na ação política 
	   representada na tela são homens do campo 
       com seus instrumentos de ofício nas mãos.', false, 9),

/*B*/('O quadro evoca temas da Revolução Francesa, 
      como a bandeira tricolor e a figura da Liberdade, 
      mas retrata um ato político assentado na teoria bolchevique.',false,9),

/*C*/('O quadro mostra tanto o ideário da Revolução Francesa 
      reavivado pelas lutas políticas de 1830 na França 
      quanto a posição política do pintor.',true,9),
      
/*D*/('No quadro, vê-se uma barricada do front 
      militar da guerra entre nobres e servos 
      durante a Revolução Francesa, sendo que 
      a Liberdade encarna os ideais aristocráticos.',false,9),

-- Alternativas da Q5 Revolução Francesa de História  
/*A*/('o julgamento e a execução de cidadãos 
       suspeitos e o tabelamento do preço do pão.',true,10),
       
/*B*/('a prisão do rei e da rainha e a conquista 
       e colonização de territórios no Norte da África.',false,10),
       
/*C*/('a vitória na guerra contra a Áustria e a 
       Prússia e o fim do controle sobre os salários dos operários.',false,10),
       
/*D*/('a ascensão política dos principais 
      comandantes militares e a implantação 
      da monarquia constitucional.',false,10),
      
/*E*/('o início da perseguição e da repressão 
       contra religiosos e a convocação dos Estados Gerais.',false,10),

-- Alternativas da Q1 Independecia do Brasil de História  
/*A*/('equilíbrio dos poderes com o controle 
       constitucional do Imperador e as ordens sociais privilegiadas.',false,11),
       
/*B*/('ampla participação política de todos os cidadãos, com exceção dos escravos.',false,11),

/*C*/('laicização do Estado por influência das ideias liberais.',false,11),

/*D*/('predominância do poder do imperador sobre todo o sistema através do Poder Moderador.',true,11),

/*E*/('autonomia das Províncias e, principalmente, dos 
       Municípios, reconhecendo-se a formação regionalizada do país.',false,11),
       
-- Alternativas da Q2 Independecia do Brasil de História 
/*A*/('Reconhecimento pioneiro dos Estados Unidos, 
       impedindo a intervenção da força da 
       Santa Aliança no Brasil.',false,12),
       
/*B*/('Reconhecimento imediato da Inglaterra, 
       interessada exclusivamente no promissor 
       mercado brasileiro.',false,12),
       
/*C*/('Desconfiança dos brasileiros, 
       reforçada após o falecimento de D. 
       João VI, de que o reconhecimento 
       reunificaria os dois reinos.',false,12),
       
/*D*/('Reação das potências europeias às ligações 
       privilegiadas com a Áustria, 
       terra natal da Imperatriz.',false,12),
       
/*E*/('Expectativa das potências europeias, 
       que aguardavam o reconhecimento de Portugal, 
       fiéis à política internacional traçada 
       a partir do Congresso de Viena.',true,12),
       
-- Alternativas da Q3 Independecia do Brasil de História 
/*A*/('o comércio de importação entrou em colapso 
	  com a vinda da Família Real (1808);',false,13),
      
/*B*/('os Estados Unidos faziam concorrência aos 
       nossos produtos, especialmente o açúcar;',false,13),
       
/*C*/('os principais produtos de exportação -
      açúcar e algodão - não eram suficientes 
      para o equilíbrio da balança comercial do país;',true,13),
      
/*D*/('o capitalismo inglês se recusava a fornecer 
       empréstimos para a agricultura;',false,13),
       
/*E*/('o sistema bancário era praticamente inexistente, 
      só tendo sido fundado o Banco do Brasil em 1850.',false,13),
      
-- Alternativas da Q4 Independecia do Brasil de História       
/*A*/('à mediação da França e dos Estados Unidos e 
       à atribuição do título de Imperador Perpétuo 
       do Brasil a D. João VI.',false,14),
       
/*B*/('à mediação da Espanha e à renovação dos 
       acordos comerciais de 1810 com a Inglaterra.',false,14),
       
/*C*/('à mediação de Lord Strangford e ao fechamento das Cortes Portuguesas.',false,14),

/*D*/('à mediação da Inglaterra e à transferência 
       para o Brasil de dívida em libras contraída 
       por Portugal no Reino Unido.',true,14),
       
/*E*/('à mediação da Santa Aliança e ao pagamento à 
       Inglaterra de indenização pelas invasões napoleônicas.',false,14),
       
-- Alternativas da Q5 Independecia do Brasil de História
/*A*/('liberal-conservador, que defendia a monarquia 
      constitucional, a integridade territorial e o 
      regime centralizado.',true,15),
      
/*B*/('maçônico, que pregava a autonomia provincial, 
       o fortalecimento do executivo e a extinção 
       da escravidão.',false,15),
       
/*C*/('liberal-radical, que defendia a convocação 
       de uma Assembleia Constituinte, a igualdade 
       de direitos políticos e a manutenção 
       da estrutura social.',false,15),
       
/*D*/('cortesão, que defendia os interesses 
       recolonizadores, as tradições monárquicas 
       e o liberalismo econômico.',false,15),
       
/*E*/('liberal-democrático, que defendia a soberania popular, 
       o federalismo e a legitimidade monárquica.',false,15),               
        
select * from tbalternativa;

/*A*/
/*B*/
/*C*/
/*D*/
/*E*/




create table tbResposta(
id_resposta int primary key auto_increment,
tempo_inicial datetime,
tempo_final datetime,
cod_usuario int,
cod_questao int,
cod_alternativa int,
foreign key(cod_usuario) references tbUsuario(id_usuario),
foreign key(cod_questao) references tbQuestao(id_questao),
foreign key(cod_alternativa)references tbAlternativa(id_alternativa)
);


insert into tbResposta(cod_usuario,cod_questao,cod_alternativa)
values
(1,1,1);

#R.tempo_inicial, R.tempo_final, A.correta,
select  count(Q.id_questao) as qtdeIncorreta from tbresposta as R 
inner join tbAlternativa as A on R.cod_alternativa = A.id_alternativa  
inner join tbQuestao     as Q on A.cod_questao = Q.id_questao
#inner join tbMateria     as M on Q.cod_materia = M.id_materia 
#inner join tbDisciplina  as D on M.cod_disciplina = D.id_disciplina 
where R.cod_questao=1 and A.correta=false
group by Q.id_questao;


create table tbEscolha(
id_escolha int primary key auto_increment,
cod_usuario int,
cod_disciplina int,
foreign key (cod_usuario) references tbUsuario(id_usuario),
foreign key (cod_disciplina) references tbDisciplina(id_disciplina)
); 



-- Desempenho do usuário
SELECT count(idTeste) as qtdeCertas FROM genniusdb.teste where certo=false group by month(data) ;

select * from tbalternativa LIMIT 0, 1000
