import "package:brazil/brazil.dart";
import "package:test/test.dart";

void main() {
  group("CPF Validator", () {
    test("Validate valid CPFs", () {
      for (var i = 0; i <= 10; i++) {
        final String generatedCpf = generateCpf();
        final bool isValid = validateCpf(generatedCpf);

        expect(isValid, isTrue);
      }
    });

    test("Validate invalid CPFs", () {
      final invalidCpfs = [
        "24948584532",
        "21262347563",
        "15142197551",
        "25565373413",
        "60118896951",
        "780.843.606-78",
        "111.111.111-11"
      ];

      for (final cpf in invalidCpfs) {
        final bool isValid = validateCpf(cpf);

        expect(isValid, isFalse);
      }
    });
  });
}
