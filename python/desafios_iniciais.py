# Desafio 1 - As Duas Torres
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

# Desafio 2 - Cachorros-Quentes
valores = input().split()
total_cachorros_quentes = int(valores[0])
total_participantes = int(valores[1])
media = total_cachorros_quentes / total_participantes
print(f'{media:.2f}')

# Desafio 3 - Cálculo de viagem
valores = input().split()
tempo_viagem = int(valores[0])
valocidade_media = int(valores[1])
distancia_percorrida = tempo_viagem * valocidade_media
quantidade_litros = distancia_percorrida / 12
print(f'{quantidade_litros:.3f}')
