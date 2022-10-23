import "package:brazil/brazil.dart";
import "package:test/test.dart";

void main() {
  group("CNPJ Validator", () {
    test("Validate valid CNPJs", () {
      for (var i = 0; i <= 10; i++) {
        final String generatedCnpj = generateCnpj();
        final bool isValid = validateCnpj(generatedCnpj);

        expect(isValid, isTrue);
      }
    });

    test("Validate invalid CNPJs", () {
      final invalidCnpjs = [
        "79819296939154",
        "29569620711550",
        "17434411742427",
        "81383842080889",
        "83581349096229",
        "18.819.279/8580-34"
      ];

      for (final cnpj in invalidCnpjs) {
        final bool isValid = validateCnpj(cnpj);

        expect(isValid, isFalse);
      }
    });
  });
}
