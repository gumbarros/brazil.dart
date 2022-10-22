import "package:brazil/src/utils/utils.dart";
import "package:test/test.dart";

void main() {
  group("Utils", () {
    test("Remove symbols", () {
      final result = removeSymbols("502.780.348-61");

      expect("50278034861", result);
    });

    test("String has only one character repeated", () {
      expect(hasOnlyOneCharacterRepeated("aaa"), isTrue);
      expect(hasOnlyOneCharacterRepeated("abc"), isFalse);
      expect(hasOnlyOneCharacterRepeated("12345"), isFalse);
      expect(hasOnlyOneCharacterRepeated("11111111111"), isTrue);
    });
  });
}
