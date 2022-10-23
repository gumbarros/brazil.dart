import "package:brazil/src/generators/cnpj_generator.dart";
import "package:brazil/src/utils/utils.dart";

///Verify if a brazilian CNPJ is valid.
bool validateCnpj(String input) {
  final String cnpj = removeSymbols(input);

  if (cnpj.length != 14) return false;

  if (hasOnlyOneCharacterRepeated(cnpj)) return false;

  final isFirstDigitValid = _validateFirstDigit(cnpj);
  final isSecondDigitValid = _validateSecondDigit(cnpj);

  return isFirstDigitValid && isSecondDigitValid;
}

bool _validateFirstDigit(String cnpj) {
  final verificationDigit =
      generateCnpjVerificationDigit(cnpj.substring(0, 12));

  return verificationDigit == cnpj.substring(12, 13);
}

bool _validateSecondDigit(String cnpj) {
  final verificationDigit =
      generateCnpjVerificationDigit(cnpj.substring(0, 13));

  return verificationDigit == cnpj.substring(13, 14);
}
