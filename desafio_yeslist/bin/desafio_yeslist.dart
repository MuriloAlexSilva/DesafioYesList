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
  double garrafaUtilizada1 = volumeGarrafas.last;
  double garrafaUtilizada2 = volumeGarrafas.last - 1;
  double garrafaUtilizada3 = volumeGarrafas.last - 2;
  double garrafaUtilizada4 = volumeGarrafas.last - 3;
  double garrafaUtilizada5 = volumeGarrafas.last - 4;

  if (volumeGarrafas.last == volumeGalao) {
    print(
        'Você utilizou uma garrafa com o volume de ${volumeGarrafas.last} litros e completou o galão de ${volumeGalao} litros.');
  } else if (volumeGarrafas.last < volumeGalao) {
    var faltaVolume = volumeGalao - volumeGarrafas.last;
    var findGarrafa;
    if ((findGarrafa = [...volumeGarrafas].any((el) => el == faltaVolume)) ==
        faltaVolume) {
      print(
          'Você utilizou as garrafas de ${volumeGarrafas.last} litro(s) e $findGarrafa litro(s) para completar o galão de ${volumeGalao} litros.');
    } else {}
  } else if (volumeGarrafas.last > volumeGalao) {
    volumeGarrafas.removeLast();
    if (volumeGarrafas.last == volumeGalao) {
      print(
          'Você utilizou uma garrafa com o volume de ${volumeGarrafas.last} litros e completou o galão de ${volumeGalao} litros.');
    } else if (volumeGarrafas.last < volumeGalao) {
      var faltaVolume = volumeGalao - volumeGarrafas.last;
      var findGarrafa;
      if ((findGarrafa = [...volumeGarrafas].any((el) => el == faltaVolume)) ==
          faltaVolume) {
        print(
            'Você utilizou as garrafas de ${volumeGarrafas.last} litro(s) e $findGarrafa litro(s) para completar o galão de ${volumeGalao} litros.');
      } else {}
    }
  }
}
