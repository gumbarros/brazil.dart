import "package:brazil/brazil.dart";
import 'package:brazil/src/models/via_cep_data.dart';
import 'package:brazil/src/models/via_cep_exception.dart';
import "package:test/test.dart";

void main() {
  group("ViaCEP", () {
    test("Retrieve valid data from a CEP", () async {
      final ViaCepData data = await getCepData("12946-071");

      expect("Atibaia", data.localidade);
      expect("Jardim Suiça", data.bairro);
      expect("Rua Nilson Teodoro de Oliveira", data.logradouro);
    });
    test("Retrieve invalid data from a CEP", () async {
      expect(
        () async => getCepData("1234567"),
        throwsA(const TypeMatcher<ViaCepException>()),
      );
    });
  });
}
