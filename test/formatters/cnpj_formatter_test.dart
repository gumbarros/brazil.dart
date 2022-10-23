import "package:brazil/src/formatters/cnpj_formatter.dart";
import "package:test/test.dart";

void main() {
  group("CNPJ Formatter", () {
    test("Format a CNPJ", () {
      final String formattedCnpj = formatCnpj("45442745000149");

      expect("45.442.745/0001-49", formattedCnpj);
    });
  });
}
