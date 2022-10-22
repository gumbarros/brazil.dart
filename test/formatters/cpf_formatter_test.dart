import 'package:brazil/brazil.dart';
import "package:test/test.dart";

void main() {
  group("CPF Formatter", () {
    test("Format a CPF", () {
      final String formattedCpf = formatCpf("50278034861");

      expect("502.780.348-61", formattedCpf);
    });
  });
}
