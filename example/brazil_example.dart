import "package:brazil/brazil.dart" as brazil;

void main() async {
  // CPF
  final String cpf = brazil.generateCpf(isFormatted: false);
  print(cpf);

  final String formattedCpf = brazil.formatCpf(cpf);
  print(formattedCpf);

  final bool isCpfValid = brazil.validateCpf(cpf);
  print(isCpfValid);

  // CNPJ
  final String cnpj = brazil.generateCnpj(isFormatted: false);
  print(cnpj);

  final String formattedCnpj = brazil.formatCnpj(cnpj);
  print(formattedCnpj);

  final bool isCnpjValid = brazil.validateCnpj(cnpj);
  print(isCnpjValid);

  // List all brazilian states
  for (final state in brazil.brazilianStates.entries) {
    print("${state.key} - ${state.value}");
  }

  final String formattedCep = brazil.formatCep("12946071");

  print(formattedCep);

  // Lookup CEP data using the ViaCEP webservice
  final data = await brazil.getCepData(formattedCep);

  print(data.localidade);
}
