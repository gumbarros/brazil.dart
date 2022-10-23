import "package:brazil/brazil.dart";

void main() {
  //CPF
  final String cpf = generateCpf(isFormatted: false);
  print(cpf);

  final String formattedCpf = formatCpf(cpf);
  print(formattedCpf);

  final bool isCpfValid = validateCpf(cpf);
  print(isCpfValid);

  //CNPJ
  final String cnpj = generateCnpj(isFormatted: false);
  print(cpf);

  final String formattedCnpj = formatCnpj(cnpj);
  print(formattedCnpj);

  final bool isCnpjValid = validateCnpj(cnpj);
  print(isCnpjValid);
}
