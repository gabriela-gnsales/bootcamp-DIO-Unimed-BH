# As Duas Torres

'''
distancia = int(input('Informe a distância entre os Palantír: '))
diametro1 = int(input('Informe o diâmetro do Palantír de Sauron: '))
diametro2 = int(input('Informe o diâmetro do Palantír de Saruman: '))

icm = distancia / (diametro1 + diametro2)

print(f'ICM da comunicação dos Palatír de Sauron e Saruma: {icm:.2f}')
'''

entrada = input().split()

distancia = int(entrada[0])
diametro1 = int(entrada[1])
diametro2 = int(entrada[2])

print(f'{distancia / (diametro1 + diametro2):.2f}')
