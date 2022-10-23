import "package:brazil/brazil.dart";
import "package:brazil/src/utils/utils.dart";

/// Verify if a brazilian CPF is valid.
bool validateCpf(String input) {
  final String cpf = removeSymbols(input);

  if (cpf.length != 11) return false;

  if (hasOnlyOneCharacterRepeated(cpf)) return false;

  final isFirstDigitValid = _validateFirstDigit(cpf);
  final isSecondDigitValid = _validateSecondDigit(cpf);

  return isFirstDigitValid && isSecondDigitValid;
}

bool _validateFirstDigit(String cpf) {
  final verificationDigit = generateCpfVerificationDigit(cpf.substring(0, 9));

  return verificationDigit == cpf.substring(9, 10);
}

bool _validateSecondDigit(String cpf) {
  final verificationDigit = generateCpfVerificationDigit(cpf.substring(0, 10));

  return verificationDigit == cpf.substring(10, 11);
}
