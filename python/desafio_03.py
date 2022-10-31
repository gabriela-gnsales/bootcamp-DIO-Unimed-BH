# Cálculo de viagem

valores = input().split()

tempo_viagem = int(valores[0])
valocidade_media = int(valores[1])

distancia_percorrida = tempo_viagem * valocidade_media
quantidade_litros = distancia_percorrida / 12

print(f'{quantidade_litros:.3f}')
