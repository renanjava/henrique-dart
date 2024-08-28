import 'package:henrique_dart/henrique_dart.dart';
import 'package:test/test.dart';

void main() {
  test('criarConta', () {
    ContaFisica contaFisica = new ContaFisica("000.000.000-00");
    ContaJuridica contaJuridica = new ContaJuridica("000.000.000-00");

    expect(contaFisica.extratoSaldo(), 0);
    expect(contaJuridica.extratoSaldo(), 0);
  });
}
