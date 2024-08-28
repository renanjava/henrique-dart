import 'package:henrique_dart/henrique_dart.dart';
import 'package:test/test.dart';

void main() {
  test('criarConta', () {
    ContaFisica contaFisica = new ContaFisica("000.000.000-00");
    ContaJuridica contaJuridica = new ContaJuridica("000.000.000-00");

    expect(contaFisica.extratoSaldo(), 0);
    expect(contaJuridica.extratoSaldo(), 0);
  });

  test('aumentarSaldo', () {
    ContaFisica contaFisica = new ContaFisica("000.000.000-00");
    contaFisica.resgatarValor(100);

    expect(contaFisica.extratoSaldo(), 100);
  });

  test('transferirValores', () {
    ContaFisica contaFisica = new ContaFisica("000.000.000-00");
    ContaJuridica contaJuridica = new ContaJuridica("000.000.000-00");

    contaJuridica.resgatarValor(100);
    contaJuridica.transferirValor(contaFisica, 50);

    expect(contaFisica.extratoSaldo(), 50);
    expect(contaJuridica.extratoSaldo(), 50);
  });
}
