'''
DESAFIO BICICLETARIA

João tem uma bicicletaria e gostaria de registrar as vendas de suas bicicletas. Crie um programa onde João informe: cor, modelo, ano e valor da bicileta vendida. Uma bicicleta pode: buzinar, parar e correr. Adicione esses comportamentos!
'''

# 'self' é uma referência ao objeto -> representa a instância do objeto  (em outras linguagens é chamado de 'this')

# MÉTODOS são FUNÇÕES dentro de uma CLASSE

class Bicicleta:
    def __init__(self, cor, modelo, ano, valor): 
        self.cor = cor
        self.modelo = modelo
        self.ano = ano
        self.valor = valor

    def buzinar(self):
        print('Plim plim...')

    def parar(self):
        print('Parando bicicleta...')
        print('Bicicleta parada!')
    
    def correr(self):
        print('Vrummmmmm...')
    
    def trocar_marcha(self, num_marcha):
        print('Trocando de marcha')
        _self = self

        def _trocar_marcha():
            if num_marcha > _self.marcha:
                print('Marcha trocada!')
            else:
                print('Não foi possível trocar de marcha')

    
    # def __str__(self):
    #     return f'Bicicleta: cor = {self.cor}, modelo = {self.modelo}, ano = {self.ano}, valor = {self.valor}'

    def __str__(self):
        return f'{self.__class__.__name__}: {", ".join([f"{chave} = {valor}" for chave, valor in self.__dict__.items()])}'


bike_1 = Bicicleta('vermelha', 'caloi', 2022, 600)

bike_1.buzinar()  # = Bicicleta.buzinar(bike_1)
bike_1.parar()
bike_1.correr()

print(bike_1.cor, bike_1.modelo)

print(bike_1)
