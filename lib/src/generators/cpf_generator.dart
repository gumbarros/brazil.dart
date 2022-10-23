import "dart:math";
import "package:brazil/src/formatters/cpf_formatter.dart";

///Generate a valid brazilian CPF.
String generateCpf({bool isFormatted = true}) {
  final cpf = StringBuffer();

  final String beginning = _generateCpfBeginning();

  cpf.write(beginning);

  final String firstDigit = generateCpfVerificationDigit(cpf.toString());

  cpf.write(firstDigit);

  final String secondDigit = generateCpfVerificationDigit(cpf.toString());

  cpf.write(secondDigit);

  return isFormatted ? formatCpf(cpf.toString()) : cpf.toString();
}

///Generate one of the verification digits of a CPF. The verification digit is generated based on the length of the input.
String generateCpfVerificationDigit(String input) {
  int result = 0;
  int multiplier = input.length + 1;

  for (int i = 0; i < input.length; i++) {
    final digit = int.parse(input[i]);
    result += digit * multiplier;
    multiplier--;
  }

  final int remainder = result % 11;

  if (remainder < 2) {
    return "0";
  }

  return (11 - remainder).toString();
}

String _generateCpfBeginning() {
  final random = Random();
  final output = StringBuffer();

  for (var i = 0; i < 9; i++) {
    output.write(random.nextInt(10));
  }

  return output.toString();
}
