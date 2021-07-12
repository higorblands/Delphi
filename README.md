Delphi Repositório de estudo
Estrutura de Dados e Orientação a Objetos com Delphi.

# Calculadora aritmética:
 Faça um programa, com interface de usuário utilizando a biblioteca VCL, que solicite os seguintes dados: número 1, número 2, operação.  Em seguida,  mostre o resultado.

# Str To ASCII code: 
Faça um programa, com interface de usuário utilizando a biblioteca VCL, que solicite uma string qualquer e converta ela para códigos ASCII. ex Não é a mamãe → 782271113223332973210997109227101.

# Verificador de triângulos: 
Faça um programa, com interface de usuário utilizando a biblioteca VCL, que solicite ao usuário as medida dos lados de um triângulo. Após isto, o programa deve informa se é possível formar um triângulo e, se sim, informar o tipo do triângulo formado.

# Detector de ratos: 
Faça um programa, com interface de usuário utilizando a biblioteca VCL, que contenha um painel alinhado acima, sem texto. E também contenha vários botões e edits espalhados pelo formulário. A cor do painel deve varia de acordo com a posição do mouse, assim:

Verde: quando o mouse estiver sobre um botão;

Amarelo: Quando o mouse estiver sobre um edit.

Vermelho: quando o mouse sair de cima de um botão ou edit;

# Lista de alunos: 
Faça um programa, com interface de usuário utilizando a biblioteca VCL, que solicite nome e idade de alunos. Ao clicar num botão, o sistema deverá mostrar na tela todos os alunos cadastrados.

# Split file: 
Faça um programa, com interface visual VCL, que forneça o usuário uma opção de selecionar um arquivo com extensão .TXT. A tela deverá ter dois campos do tipo Memo. Após a seleção do arquivo, o programa deverá lê-lo e dividí-lo. Meta das linhas deverá ser escrita no memo  da direita, e a outra metade no memo da esquerda.  OBS: Se a quantidade de linhas for ímpar, o memo da esquerda ficará com mais linhas.

# Odd Line select: 
Faça um programa semelhante ao programa do "Split file", porém, as linhas de número ímpar deverão ser escrita no memo da esquerda, logo, as linhas de número par  no memo da direita. 

# Criptografia fajuta: 
Faça um programa, com interface visual VCL, que forneça o usuário uma opção de selecionar um arquivo com extensão .TXT. Após isto, o programa deverá criptografar todo o arquivo e gravar na mesma pasta do arquivo original. O nome do arquivo criptografado deverá ser concatenação do nome do arquivo original com o sufixo “_c”. A criptografia deverá utilizar a tabela ASCII, onde cada caractere criptografado deverá ser o caractere ASCII original + 10. Exemplo

Texto original: ABCD0123456789 

Texto criptografado: KLMN:;<=>?@ABC

OBS: A partir de 266 deve-se contar a partir de 0. Ou seja:

266 = 0

267 = 1

# Cadastro de alunos:
 Faça um programa, com interface visual VCL, que forneça o usuário uma opção de selecionar um arquivo com extensão .TXT. O arquivo que pode ser usado como exemplo é o alunos.txt na branch "Main".

Cada linha do arquivo contém um aluno na seguinte estrutura:

NOME DO ALUNO | IDADE DO ALUNO | PESO DO ALUNO (Em KG) |

O programa deverá ler o conteúdo deste arquivo e armazenar os dados de forma estruturada.

Além disto, deverá listar os alunos à esquerda (ListBox) e , conforme o usuário selecionar um aluno, o programa deverá mostra a idade e o peso do aluno

# Cadastro de alunos 02: 
Faça o programa semelhante ao anterior.  O arquivo que pode ser usado como exemplo é o alunos02.txt na branch "Main".

Onde:

-O nome do aluno está nas primeiras 100 posições de cada linha.

-A idade do aluno está da posição 101 a 103 de cada linha

-O peso do aluno está da posição 104 a 108 de cada linha.

# Faça um programa de cadastro pessoas(Cliente e Vendedor) Totalmente orientado a objetosou seja, o armazenamento de dados pode ser feito em memória com qualquer estrutura de dados (vetor, matriz e etc). 

Toda pessoa tem as seguintes características:

Nome [string][50][not null]

Idade [integer][not null]

Método Salvar (que valida e salva os dados) [fn :boo]

Todo cliente tem , além das características de pessoa, o seguinte:

Melhor dia de vencimento [integer][not null][1-31]

Endereço de entrega[string][200][not null]

Todo vendedor tem  , além das características de pessoa, o seguinte:

Percentual de comissão[float][not null][>0]

Tipo de vendedor[char][not null][I,E] (interno ou externo)

Ao final , o programa deverá ter um botão que liste, de forma simples, todas as pessoas cadastradas.

# Pedido de venda:
 Faça um programa, com herança visual , que simule uma tela de pedido de venda. (3 tipos )

Todo pedido de venda tem as seguintes características.

Número do pedido[Integer][Not null]

Nome do Vendedor[String][100][Not null]

Valor do Pedido[Float][Not null]

Nome do cliente[String][100][Not null]

Um botão salvar, que valida e processa os dados.

O pedido de venda interna tem, além das características de pedido de venda, o seguinte:

Após o processamento dos dados, ele gera um código DAV, que é a concatenação do número do pedido com o data atual no seguinte formato”AAAAMMDD”.

Não aceita pedidos com valor maior que 1.000,00.

O pedido de venda externa tem, além das características de pedido de venda, o seguinte:

Nome do vendedor externo[String][100][Not null] 

Após o processamento dos dados, ele gera um código DAV, que é a concatenação do número do pedido com as três primeiras letras do vendedor externo e com o data atual no seguinte formato”AAAAMMDD”.

O pedido de venda MOIP,além das características de pedido de venda interno, o seguinte:

Número do pedido MOIP[string][20][Not null]

Após o processamento do pedido, ele gera um código de autorização MOIP, que consiste na concatenação do número do pedido + Nº Ped MOIP + MD5 do código “7010”.

# ComboBox2: 
Faça um novo combo box, herdando do padrão, que contenha a propriedade keys, semelhante à propriedade itens, porém para armazenar códigos dos itens. Desta forma, faça também, uma função chamada getKey para retornar o código do item selecionado

# RAD List:
 Fazer programa VCL que realize uma listagem básica da tabela produto do banco do Kairos.

# Join: 
Fazer programa que liste os produtos e seus respectivos lotes em uma única lista.

# Master detail:
 Fazer programa semelhante ao anterior, porém agora em duas listas distintas e sincronizadas(a medida que o usuário selecionar um produto, deverão ser mostrados apenas os lotes deste produto).

# Grade personalizada:
 Faça um programa semelhante ao 1º, porém agora a listagem deve apresentar apenas as seguintes colunas: |Código do produto | Descrição do produto | Data da última alteração|.

# Listagem assíncrona: 
Faça um programa semelhante ao 1º, porém agora os dados devem ser armazenados em memória, fazendo com que não haja dependência da conexão.

# Master Detail assíncrono: 
Faça um programa semelhante ao 3º, porém assíncrono.

# Banquinho: 
Crie uma modelagem de uma tabela de banco de dados para armazenar o cadastro de alunos. Esta tabela deverá armazenar os seguintes dados:

ID

Nome

Curso

Turno

Período

Data de nascimento

Data de ingresso na faculdade.

# RAD CRUD: 
Faça um programa de cadastro simples, sem muito código, apenas com componentes RAD, para cadastrar alunos.

# CRUD básico: 
Faça um outro programa de cadastro simples, agora sem utilizar componentes RAD, ou seja, utilizando componentes T-SQL. 

# Remodelagem:
 Modele e alimente manualmente uma nova tabela, chamada cursos. Ela deverá conter apenas o ID e o Nome dos cursos possíveis de uma determinada faculdade. Feito isto, crie uma restrição na tabela de alunos fazendo com que só seja permitido informar cursos existentes na tabela de cursos.

# CRUD melhor”zinho”: 
Altere o exercício 3 para fazer com que o usuário somente possa selecionar cursos pre-existentes. Ou seja, deverá utilizar combobox para  a seleção.
