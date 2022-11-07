# PYTHON

* uma linguagem de tipagem dinâmica e forte
* multiplataforma e multiparadigma
* case sensitive

`int()` -> clicar em CTRL e em cima da classe para ver sua implementação e todos os métodos utilizados

__Verificar a versão do python:__ python -V ou python3 -V

### Modo interativo: 
* chamando apenas o interpretador: python
* executando o script com a flag -i: python -i app.py
* -> para sair: `exit()`

## Métodos:

### dir
* sem argumentos: `dir()` -> retorna a lista de nomes no escopo local atual
    * se importar uma biblioteca (ex: math), ela vai aparecer no retorno do dir()
* com um argumento: ex: `dir(100)` -> retorna uma lista de atributos válidos para o objeto, nesse exemplo os métodos de um inteiro

### help
* invoca o sistema de ajuda integrado: 
    * modo interativo: `help()` 
    * informando por parâmetro o nome do módulo, função, classe, método ou variável: ex: `help(100)`

### Python não tem constantes
__Convenção para informar que uma variável é constante:__ criar a variável com o __nome todo em letras maiúsculas__

## Boas práticas:
* o padrão de nomes deve ser _snake case_
* escolher nomes sugestivos
* nome de constante todo em maiúsculo

A função __print__ recebe _1 argumento obrigatório_ do tipo _varargs_ de obetos e _4 argumentos opcionais (sep, end, file e flush)_

__OBS:__ o operador aritmético de divisão interia retorna apenas um valor do tipo inteiro se o numerador for inteiro. Caso seja float, ele também trunca o resultado para o menor inteiro mais próximo, mas seu tipo permanece como float 

__OBS:__ strings (''), listas ([])... __vazias__ são consideradas com valor bool = `False`

### Operadores de identidade: `is` e `is not`
São utilizados para comparar se os dois objetos testados ocupam a mesma posição na memória

### Operadores de associação: `in` e `not in` --> é case sensitive
São utilizados para verificar se um objeto está presente em uma sequência

* __`break`:__ PARA a execução
* __`continue`:__ PULA a execução

## POO - Programação Orientada a Objetos

### Classe
__-->__ Define as características e comportamentos de um objeto, porém não conseguimos usá-las diretamente

### Objeto
__-->__ Podemos usá-los e eles possuem as características e comportamentos que foram definidos nas classes

__`__init__`:__ método CONSTRUTOR - sempre é executado quando uma nova instância da classe é criada; nesse método inicializamos o estado do nosso objeto

__`__del__`:__ método DESTRUTOR - sempre é executado quando uma instância (objeto) é destruída; destrutores em Python não são tão necessários quanto em C++ porque o Python tem um coletor de lixo que lida com o gerenciamento de memória automaticamente

### Herança
__-->__ Capacidade de uma classe filha derivar ou herdar as características e comportamentos da classe pai (base)
* fornece reutilização de código, não precisamos escrever o mesmo código repetidamente
* permite adicionar mais recursos a uma classe sem modificá-la
* é de natureza transitiva, o que significa que, se a classe B herdar da classe A, todas as subclasses de B herdarão automaticamente da classe A
* __simples / única:__ quando uma classe filha herda apenas uma classe pai
* __múltipla:__ quando uma classe filha herda de várias classes pai

### Encapsulamento
__-->__ Descreve a ideia de agrupar dados e os métodos que manipulam esses dados em uma unidade
* impõe restrições ao acesso direto a variáveis e métodos e pode evitar a modificação acidental de dados
* para evitar alterações acidentais, a variável de um objeto só pode ser alterada pelo método desse objeto
* em Python não há palavras reservadas para definir o nível de acesso aos atributos e métodos da classe (se são públicas ou privadas) -> todos os recursos são públicos
* há uma __convenção para definir recursos privados__ -> __iniciar com underline__
* o interpretador Python não irá garantir a proteção do recurso iniciado com underline, mas por ser uma convenção amplamente adotada na comunidade, quando encontramos uma variável e/ou método com nome iniciado por underline, sabemos que não deveríamos manipular o seu valor diretamente, ou invocar o método fora do escopo da classe

  __Recurso:__
  * __Público:__ pode ser acessado de fora da classe
  * __Privado:__ só pode ser acessado pela classe

## Listas
* para adicionar mais de um elemento na lista: `extend` -> `lista.extend([elemento_1, elemento_2...])`

## Bibliotecas

### Pandas
__-->__ Biblioteca de código aberto para análise de dados
* importar a biblioteca: `import pandas as pd`
* importar o dataframe (tabela) = df: `df = pd.read_csv('caminho/nome_arquivo.csv', error_bad_lines=False, sep='símbolo_do_separador')`
  * `read_excel`
* visualizar as 5 primeiras linhas: `df.head()`
  * para ver mais linhas, colocar a quantidade desejada dentro dos parênteses
* visualizar as 5 últimas linhas: `df.tail()`
* renomear o nome das colunas: `df = df.rename(columns={'country':'país', ...})`
* saber o total / a quantidade de linhas e colunas do dataframe: `df.shape`
* saber o nome das colunas: `df.columns`
* saber o tipo de dado armazenado em cada coluna: `df.dtypes`
  * _object_ = _string_
* informações estatísticas do conjunto de dados (quantidade, média, mín, máx, desvio padrão, quartis): `df.describe()`
* valores de uma coluna específica: `df['nome_coluna'].unique()`
* realizar filtros na base de dados: usar o `loc`
  * ex: `Oceania = df.loc[df['continente'] == 'Oceania']` -> `Oceania.head()`
* agrupar dados: usar o `groupby`
  * ex: `df.groupby('continente')['País'].nunique()`
  * ex: `df.groupby('Ano')['Expectativa de vida'].mean()`
* juntar / concatenar vários arquivos: `df = pd.concat([df1, df2, ...])`
* obter amostra do conjunto de dados: `df.sample(quantidade desejada de dados)`
* alterar o tipo de dado de uma coluna: `df['nome_coluna'] = df['nome_coluna'].astype('nome do tipo de dado desejado')`
* __tratar valores faltantes:__
  * consultar linhas com valores faltantes: `df.isnull().sum()`
  * substituir valores nulos pela média: `df['nome da coluna'].fillna(df['nome da coluna'].mean(), inplace=True)`
  * substituir valores nulos por zero: `df['nome da coluna'].fillna(0, inplace=True)`
  * apagar linhas com valores nulos: `df.dropna(inplace=True)`
  * apagar linhas com valores nulos com base apenas em 1 coluna: `df.dropna(subset=['nome da coluna'], inplace=True)`
  * remover linhas que estejam com valores faltantes em todas as colunas: `df.dropna(how='all', inplace=True)`
* __criar novas colunas:__
  * `df['Receita'] = df['Vendas'].mul(df['Quantidade'])` -> `mul` = multiplicar
  * `df['Receita / Vendas'] = df['Receita'] / df['Vendas']`
* método para retornar os maiores valores com base em uma coluna específica: `df.nlargest(quantidade desejada, 'nome da coluna')`
* método para retornar os menores valores com base em uma coluna específica: `df.nsmallest(quantidade desejada, 'nome da coluna')`
* método para contagem: `value_counts`
  * do maior para o menor: `value_counts(ascending=True)`
* ordenar o conjunto de dados: `df.sort_values('nome da coluna', ascending=False).head()`
* __trabalhar com datas:__
  * transformar a coluna de data para tipo inteiro: `df['Data'] = df['Data'].astype(int64)`
  * transformar a coluna de data em data: `df['Data'] = pd.to_datetime(df['Data'])`
  * agrupar por ano: `df.groupby(df['Data'].dt.year)['Receita'].sum()`
  * criar uma nova coluna com o ano: `df['ano_venda'] = df['Data'].dt.year`
  * extrair o mês e o dia: `df['mes_venda'], df['dia_venda'] = (df['Data'].dt.month, df['Data'].dt.day)`
  * retornar a data mais antiga: `df['Data'].min()`
  * calcular a diferença de dias: `df['diferenca_dias'] = df['Data'] - df['Data'].min()`
  * criar a coluna de trimestre: `df['trimestre_venda'] = df['Data'].dt.quarter`
  * filtrar dados -> ex: `vendas_marco_19 = df.loc[(df['Data'].dt.year == 2019) & (df['Data'].dt.month == 3)]`
* __visualizar dados:__
  * gráfico de barras: `df['nome da coluna'].value_counts(ascending=False).plot.bar()`
  * gráfico de barras horizontais: `df['nome da coluna'].value_counts.plot.barh()`
  * gráfico de pizza -> ex: `df.goupby(df['Data'].dt.year)['Receita'].sum().plot.pie()`
  * adicionar um título e alterar o nome dos eixos:
    ```
    import matplotlib.pyplot as plt
    df['nome da coluna'].value_counts().plot.bar(title='Título')
    plt.xlabel('Nome eixo X')
    plt.ylabel('Nome eixo Y')
    ```
  * alterar a cor: `df['nome da coluna'].value_counts().plot.bar(color='nome da cor')`
  * alterar o estilo: `plt.style.use('nome do estilo')` -> [Site matplotlib - folhas de estilo](https://matplotlib.org/stable/gallery/style_sheets/index.html)
  * exibir a legenda: `plt.legend()`
  * alterar o marcador -> ex: `plot(marker='*')`
  * histograma: `plt.hist(df['nome da coluna'])`
  * gráfico de dispersão: `plt.scatter(x=df['nome da coluna'], y=df['nome da coluna'])`
  * salvar em png: `plt.savefig('nome_da_figura.png')`
  * 
