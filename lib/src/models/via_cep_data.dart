class ViaCepData {
  String? cep;
  String? logradouro;
  String? complemento;
  String? bairro;
  String? localidade;
  String? uf;
  String? ibge;
  String? gia;
  String? ddd;
  String? siafi;

  ViaCepData({
    this.cep,
    this.logradouro,
    this.complemento,
    this.bairro,
    this.localidade,
    this.uf,
    this.ibge,
    this.gia,
    this.ddd,
    this.siafi,
  });

  ViaCepData.fromJson(Map<String, dynamic> json) {
    cep = json['cep'] as String?;
    logradouro = json['logradouro'] as String?;
    complemento = json['complemento'] as String?;
    bairro = json['bairro'] as String?;
    localidade = json['localidade'] as String?;
    uf = json['uf'] as String?;
    ibge = json['ibge'] as String?;
    gia = json['gia'] as String?;
    ddd = json['ddd'] as String?;
    siafi = json['siafi'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cep'] = cep;
    data['logradouro'] = logradouro;
    data['complemento'] = complemento;
    data['bairro'] = bairro;
    data['localidade'] = localidade;
    data['uf'] = uf;
    data['ibge'] = ibge;
    data['gia'] = gia;
    data['ddd'] = ddd;
    data['siafi'] = siafi;
    return data;
  }
}
