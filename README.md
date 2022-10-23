![image](https://user-images.githubusercontent.com/52143624/197362764-47dc5128-d14f-4575-a643-26aa4f6d9281.png)

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
import 'package:brazil/brazil.dart';

//CPF
final String cpf = generateCpf(isFormatted: false);
print(cpf);

final String formattedCpf = formatCpf(cpf);
print(formattedCpf);

final bool isCpfValid = validateCpf(cpf);
print(isCpfValid);

```
