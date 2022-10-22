import "package:brazil/brazil.dart";

void main() {
  final String cpf = generateCpf(isFormatted: false);
  print(cpf);

  final String formattedCpf = formatCpf(cpf);
  print(formattedCpf);

  final bool isCpfValid = validateCpf(cpf);
  print(isCpfValid);
}
