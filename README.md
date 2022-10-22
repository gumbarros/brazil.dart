![Brazil dart-1(2)](https://user-images.githubusercontent.com/52143624/197362660-fb4b2316-2125-461f-a4a0-1105cac7873d.png)


Function-oriented library for generating, validating and formatting Brazilian values such as CPF and CNPJ.

## Features

Supported brazilian data for generation, formatting and validation:

- CPF

# Getting Started

## Flutter

```sh
flutter pub add brazil
```
## Dart
```sh
dart pub add brazil
```
## Usage

```dart
import 'package:brazil/brazil.dart'

//CPF
final String cpf = generateCpf(isFormatted: false);
print(cpf);

final String formattedCpf = formatCpf(cpf);
print(formattedCpf);

final bool isCpfValid = validateCpf(cpf);
print(isCpfValid);

```
