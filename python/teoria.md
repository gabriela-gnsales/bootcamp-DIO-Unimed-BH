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

__`__init__`:__ método CONSTRUTOR

__`__del__`:__ método DESTRUTOR

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



