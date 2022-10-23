class ViaCepException implements Exception {
  final int statusCode;
  final String message;

  ViaCepException(this.statusCode, this.message);
}
