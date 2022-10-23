/// Format a brazilian CNPJ string.
String formatCnpj(String cnpj) {
  final RegExp regExp = RegExp(r"^(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})");

  return cnpj.replaceAllMapped(
    regExp,
    (Match m) => "${m[1]}.${m[2]}.${m[3]}/${m[4]}-${m[5]}",
  );
}
