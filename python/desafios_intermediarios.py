# Alfabeto
'''
import string

letra = input().lower()

for i, l in enumerate(list(string.ascii_lowercase)):
    if letra == l:
        print(i+1)
'''
# Papagaio Poliglota
'''
while True: 
    try:
        # TODO:  Programe aqui dentro as condições necessárias para satisfazer o problema
        # e imprima a saída de acordo com a situação das pernas do papagaio
        situacao_levantamento_perna = input()
        if situacao_levantamento_perna == 'esquerda':
            print('ingles')
        elif situacao_levantamento_perna == 'direita':
            print('frances')
        elif situacao_levantamento_perna == 'nenhuma':
            print('portugues')
        else:
            print('caiu') 
    except EOFError: 
        break
'''
# Aumento Salarial
salario = float(input())

percentual_reajuste = 0
if salario <= 600:
    percentual_reajuste = 17
elif salario <= 900:
    percentual_reajuste = 13
elif salario <= 1500:
    percentual_reajuste = 12
elif salario <= 2000:
    percentual_reajuste = 10
else:
    percentual_reajuste = 5

novo_salario = salario * (percentual_reajuste/100 + 1)
reajuste_ganho = novo_salario - salario

print(f'Novo salario: {novo_salario:.2f}')
print(f'Reajuste ganho: {reajuste_ganho:.2f}')
print(f'Em percentual: {percentual_reajuste} %')
