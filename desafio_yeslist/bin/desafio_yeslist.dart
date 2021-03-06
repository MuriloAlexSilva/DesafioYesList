import 'dart:io';

void main(List<String> arguments) {
  print(
      '========== Qual seria o volume do galão que deseja encher? ==========');
  var volumeGalaoInput = stdin.readLineSync();
  double volumeGalao = double.parse(volumeGalaoInput);
  print(
      '========== Qual seria a quantidade de garrafas que você deseja utilizar? ==========');
  var qtddGarrafaInput = stdin.readLineSync();
  double qtddGarrafa = double.parse(qtddGarrafaInput);

  var volumeGarrafas = List();

  for (var i = 1; i <= qtddGarrafa; i++) {
    print('========== Digite o volume da garrafa $i ==========');
    var volumeGarrafaInput = stdin.readLineSync();
    double volumeGarrafa = double.parse(volumeGarrafaInput);
    volumeGarrafas.add(volumeGarrafa);
  }
  print(volumeGarrafas);
  volumeGarrafas.sort();
  print(volumeGarrafas);
}
