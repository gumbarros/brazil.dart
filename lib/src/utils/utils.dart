String removeSymbols(String numbers) {
  return numbers.replaceAll(RegExp(r"[^\w\s]+"), "");
}

bool hasOnlyOneCharacterRepeated(String str) {
  for (int i = 0; i < str.length - 1; i++) {
    for (int j = i + 1; j < str.length; j++) {
      if (str[i] != str[j]) {
        return false;
      }
    }
  }

  return true;
}
