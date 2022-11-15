/// Format a brazilian CEP string.
String formatCep(String cep) {
  final regExp = RegExp(r"^(\d{5})(\d{3})$");

  return cep.replaceAllMapped(
    regExp,
    (Match m) => "${m[1]}-${m[2]}",
  );
}
