Parte Python:

Código em Python para Análise de Dados de Vendas
Este código realiza a análise de dados sobre vendas a partir de um arquivo CSV chamado DB_Test.csv. Ele utiliza a biblioteca pandas para manipulação dos dados e gera resultados formatados, incluindo um arquivo Excel.

Como Executar o Código
Certifique-se de ter o Python instalado, juntamente com a biblioteca pandas.
Garanta que o arquivo DB_Test.csv esteja no mesmo diretório do código.
Execute o script. Ele:
Processará os dados.
Salvará os resultados da Tarefa 1 em um arquivo Excel chamado DB_Vendedores.xlsx.
Imprimirá os resultados das demais tarefas no console.
Descrição do Código
Importação da Biblioteca O código importa a biblioteca pandas, que é utilizada para manipulação de dados tabulares.

Função para Formatação de Moeda A função processa valores monetários (exemplo: "R$ 1.234,56") e os converte para o tipo float.

Remove o símbolo "R$".
Exclui pontos como separadores de milhares.
Substitui vírgulas por pontos para compatibilidade com o formato decimal.
Leitura do Arquivo CSV Os dados do arquivo DB_Test.csv são lidos e armazenados em um DataFrame.

Tarefas Realizadas pelo Código
Tarefa 1: Total de Vendas por Vendedor
Agrupa os dados por vendedor e soma os valores.
Ordena os valores de forma decrescente.
Imprime o resultado no console e salva em um arquivo Excel chamado DB_Vendedores.xlsx.
Tarefa 2: Clientes com Maior e Menor Venda
Maior Venda:

Agrupa os dados por cliente e identifica a maior venda.
Formata o valor no estilo "R$ 1.234,56".
Menor Venda:

Agrupa os dados por cliente e identifica a menor venda.
Formata o valor no mesmo estilo.
Os clientes e os valores são exibidos no console.

Tarefa 3: Valor Médio de Vendas por Tipo
Agrupa os dados por tipo de venda e calcula a média dos valores.
Para cada tipo, o valor médio é formatado no estilo "R$ 1.234,56" e exibido no console.
Tarefa 4: Quantidade de Vendas por Cliente
Agrupa os dados por cliente e conta a quantidade de vendas realizadas.
Imprime no console o nome do cliente e o número de vendas realizadas.
Resultado Esperado
Tarefa 1: Um arquivo Excel com o total de vendas por vendedor.
Tarefa 2: Clientes com maior e menor venda, exibidos no console com os valores formatados.
Tarefa 3: Valor médio de vendas por tipo, exibido no console.
Tarefa 4: Quantidade de vendas por cliente, exibida no console.



Parte MySQL:

Este script SQL cria um banco de dados relacional para gerenciar informações de vendas, clientes, equipes e categorias. Ele também inclui consultas para análise de vendas, como filtrar vendas de um ano específico, associar vendedores às suas equipes e calcular vendas trimestrais.


Cada tarefa feita contém uma query e uma imagem ou arquivo em CSV mostrando como foi feito e o resultado do codigo para cada tarefa.
