import "dart:math";
import "package:brazil/src/formatters/cnpj_formatter.dart";

/// Generate a valid brazilian CNPJ.
String generateCnpj({bool isFormatted = true}) {
  final cnpj = StringBuffer();

  final String beginning = _generateCnpjBeginning();

  cnpj.write(beginning);

  final String firstVerificationDigit =
      generateCnpjVerificationDigit(cnpj.toString());

  cnpj.write(firstVerificationDigit);

  final String secondVerificationDigit =
      generateCnpjVerificationDigit(cnpj.toString());

  cnpj.write(secondVerificationDigit);

  return isFormatted ? formatCnpj(cnpj.toString()) : cnpj.toString();
}

///Generate one of the verification digits of a CNPJ. The verification digit is generated based on the length of the input.
String generateCnpjVerificationDigit(String input) {
  int result = 0;

  final verificationArray = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];

  if (input.length == 13) verificationArray.insert(0, 6);

  for (int i = 0; i < input.length; i++) {
    final digit = int.parse(input[i]);
    result += digit * verificationArray[i];
  }

  final int remainder = result % 11;

  if (remainder < 2) {
    return "0";
  }

  return (11 - remainder).toString();
}

String _generateCnpjBeginning() {
  final output = StringBuffer();

  for (int i = 0; i < 8; i++) {
    output.write(Random().nextInt(10));
  }

  output.write("0001");

  return output.toString();
}
