import pandas as pd


def converter_numeros(coluna):

    coluna = coluna.str.replace('R$ ', '').str.replace('.', '').str.replace(
        ',', '.').str.strip()  # Retira as formatações de moeda
    coluna = coluna.astype(float)  # Coloca a coluna em formato float
    return coluna


df = pd.read_csv('DB_Test.csv', sep=';') # leitura do arquivo em csv com separador ';'
df['Valor'] = converter_numeros(df['Valor'])# converte a coluna pra formato numerico


# Tarefa 1
print('Tarefa 1:')  # printa tarefa 1
df_vendedores = df.groupby('Vendedor')['Valor'].sum() # agrupa por vendedor e soma o valor
df_vendedores = df_vendedores.sort_values(ascending=False) # ordena os valores de forma decrescente
print(df_vendedores)  # printa o resultado
df_vendedores.to_excel('DB_Vendedores.xlsx')# salva o resultado em um arquivo excel


# Tarefa 2
print('Tarefa 2:')  # printa tarefa 2

df_maiores_vendas = df.groupby('Cliente')['Valor'].max()    # Agrupa por cliente e pega o valor máximo
cliente_maior_venda = {  # cria dicionário com cliente e valor
    'cliente': df_maiores_vendas.idxmax(),  # pega o cliente com maior valor
    'valor': df_maiores_vendas.max()  # pega o valor máximo
}
valor_max_formatado = f"R$ {cliente_maior_venda['valor']:,.2f}".replace(",", "X").replace(".", ",").replace("X", ".") # Formata o valor máximo
print(f"Cliente com maior venda: {cliente_maior_venda['cliente']} - {valor_max_formatado}") # Printa o resultado formatado indicando cliente com maior venda e o valor


df_menores_vendas = df.groupby('Cliente')['Valor'].min() # Agrupa por cliente e pega o valor mínimo
cliente_menor_venda = {  # cria dicionário com cliente e valor
    'cliente': df_menores_vendas.idxmin(),  # pega o cliente com menor valor
    'valor': df_menores_vendas.min()  # pega o valor mínimo
}
valor_min_formatado = f"R$ {cliente_menor_venda['valor']:,.2f}".replace(",", "X").replace(".", ",").replace("X", ".") # Formata o valor mínimo
print(f"Cliente com menor venda: {cliente_menor_venda['cliente']} - {valor_min_formatado}") # Printa o resultado formatado indicando cliente com menor venda e o valor


# Tarefa 3
print('Tarefa 3:')  # printa tarefa 3
valor_medio_vendas_por_tipo = df.groupby('Tipo')['Valor'].mean() # Agrupa por tipo e calcula a média do valor
for tipo, valor in valor_medio_vendas_por_tipo.items(): # Formata e printa o resultado no formato desejado
    valor_formatado = f"R$ {valor:,.2f}".replace(",", "X").replace(".", ",").replace("X", ".")
    print(f"Valor médio de {tipo}: {valor_formatado}")


# Tarefa 4
print('Tarefa 4:')  # printa tarefa 4
vendas_por_cliente = df.groupby('Cliente')['ID'].count()# agrupa por cliente e conta a quantidade de vendas
for cliente, venda in vendas_por_cliente.items():  # loop para printar o resultado
    print(f'{cliente} - Vendas: {venda}')  # printa o resultado
