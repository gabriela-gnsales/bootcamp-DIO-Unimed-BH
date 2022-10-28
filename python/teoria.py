nome, idade = 'Gabi', 27
print(nome)
print(idade)

for numero in range(100):  # exibe apenas os números ímpares
    if numero % 2 == 0: 
        continue  # pula os números pares
    print(numero, end=' ')

print()

texto = '    python    '
print(texto.strip() + '.')
print(texto.lstrip() + '.')
print(texto.rstrip() + '.')

curso = 'python'
print(curso.center(10))  #   python
print(curso.center(10, '#'))  # ##python##
print('.'.join(curso))  # p.y.t.h.o.n

nome = 'curso de python'
print(nome.title())  # Curso De Python
print(nome.capitalize())  # Curso de python

pessoa = {
    'nome': 'Gabi',
    'idade': 27
}

print('Olá, meu nome é {nome} e possuo {idade} anos.'.format(**pessoa))

curso = "Python"                                                     
print(curso[::-1])

