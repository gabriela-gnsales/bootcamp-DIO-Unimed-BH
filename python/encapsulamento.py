class Conta:
    def __init__(self, num_agencia, saldo=0):
        self._saldo = saldo
        self.num_agencia = num_agencia

    def depositar(self, valor):
        # ...
        self._saldo += valor

    def sacar(self, valor):
        # ...
        self._saldo -= valor

    def mostrar_saldo(self):
        # ...
        return self._saldo


conta = Conta('0001', 100)
conta.depositar(100)
print(conta.num_agencia)
print(conta.mostrar_saldo())
