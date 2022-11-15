import 'package:brazil/brazil.dart';
import "package:test/test.dart";

void main() {
  group("CEP Formatter", () {
    test("Format a CEP", () {
      final String formattedCEP = formatCep("12947370");

      expect("12947-370", formattedCEP);
    });
  });
}
