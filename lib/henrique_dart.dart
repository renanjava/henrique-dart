abstract class ContaBancaria {
  double saldo = 0.00;

  double extratoSaldo() {
    return this.saldo;
  }

  void transferirValor<T extends ContaBancaria>(T contaDestino, int valor) {
    this.saldo -= valor;
    contaDestino.saldo += valor;
  }

  void resgatarValor(int valor) {
    this.saldo += valor;
  }
}

class ContaJuridica extends ContaBancaria {
  String cnpj;

  ContaJuridica(this.cnpj) {}
}

class ContaFisica extends ContaBancaria {
  String cpf;

  ContaFisica(this.cpf) {}
}
