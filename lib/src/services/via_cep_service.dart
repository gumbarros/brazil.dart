import 'dart:convert';
import 'dart:io';
import 'package:brazil/src/models/via_cep_data.dart';
import 'package:brazil/src/models/via_cep_exception.dart';

/// Returns a model containing CEP data from the [ViaCEP Webservice](https://viacep.com.br/).
/// Throws a [ViaCepException] if the CEP or response is not valid.
Future<ViaCepData> getCepData(String cep) async {
  final client = HttpClient();
  try {
    final url = Uri.parse("https://viacep.com.br/ws/$cep/json/");

    final request = await client.getUrl(url);

    final response = await request.close();

    if (response.statusCode != 200) {
      throw ViaCepException(response.statusCode, "Invalid CEP data.");
    }

    final stringData = await response.transform(utf8.decoder).join();

    final json = jsonDecode(stringData) as Map<String, dynamic>;

    if (json.containsKey("erro")) {
      throw ViaCepException(response.statusCode, "Invalid CEP data.");
    }

    return ViaCepData.fromJson(json);
  } finally {
    client.close();
  }
}
