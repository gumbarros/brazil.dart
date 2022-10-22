import "dart:math";
import "package:brazil/src/formatters/cpf_formatter.dart";

///Generate a valid brazilian CPF.
String generateCpf({bool isFormatted = true}) {
  final cpf = StringBuffer();

  final String beginning = _generateCpfBeginning();

  cpf.write(beginning);

  final String firstDigit = generateVerificationDigit(cpf.toString());

  cpf.write(firstDigit);

  final String secondDigit = generateVerificationDigit(cpf.toString());

  cpf.write(secondDigit);

  return isFormatted ? formatCpf(cpf.toString()) : cpf.toString();
}

String _generateCpfBeginning() {
  final random = Random();
  final cpf = StringBuffer();

  for (var i = 0; i < 9; i++) {
    cpf.write(random.nextInt(10));
  }

  return cpf.toString();
}

String generateVerificationDigit(String cpf) {
  int result = 0;
  int multiplier = cpf.length + 1;

  for (int i = 0; i < cpf.length; i++) {
    final digit = int.parse(cpf[i]);
    result += digit * multiplier;
    multiplier--;
  }

  final int remainder = result % 11;

  if (remainder < 2) {
    return "0";
  }

  return (11 - remainder).toString();
}
