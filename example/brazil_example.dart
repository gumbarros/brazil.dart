import "package:brazil/brazil.dart" as brazil;
import 'package:brazil/src/models/via_cep_data.dart';

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

  // Lookup CEP data using the ViaCEP webservice
  final ViaCepData data = await brazil.getCepData("12946-071");

  print(data.localidade);
}
