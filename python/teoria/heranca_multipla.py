class Animal:
    def __init__(self, num_patas):
        self.num_patas = num_patas

    def __str__(self):
        return f"{self.__class__.__name__}: {', '.join([f'{chave}={valor}' for chave, valor in self.__dict__.items()])}"


class Mamifero(Animal):
    def __init__(self, cor_pelo, **kw):
        self.cor_pelo = cor_pelo
        super().__init__(**kw)


class Ave(Animal):
    def __init__(self, cor_bico, **kw):
        self.cor_bico = cor_bico
        super().__init__(**kw)


class Gato(Mamifero):
    pass


class Ornitorrinco(Mamifero, Ave):
    def __init__(self, cor_bico, cor_pelo, num_patas):
        super().__init__(cor_pelo=cor_pelo, cor_bico=cor_bico, num_patas=num_patas)


gato = Gato(num_patas=4, cor_pelo="preto")
# print(gato)

ornitorrinco = Ornitorrinco(num_patas=2, cor_pelo="vermelho", cor_bico="laranja")
# print(ornitorrinco)
