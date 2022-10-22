///Format a brazilian CPF string.
String formatCpf(String cpf) {
  final regExp = RegExp(r"^(\d{3})(\d{3})(\d{3})(\d{2})$");

  return cpf.replaceAllMapped(
    regExp,
    (Match m) => "${m[1]}.${m[2]}.${m[3]}-${m[4]}",
  );
}
