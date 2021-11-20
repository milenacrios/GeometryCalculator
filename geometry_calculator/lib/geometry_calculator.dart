// ignore_for_file: unrelated_type_equality_checks

import 'dart:io';

class GeometryCalculator {
  double areaFigura(String tipo, double medidaA, double medidaB) {
    double area;
    if (tipo == '1') {
      //Área Triângulo
      return area = (medidaA * medidaB) / 2;
    } else if (tipo == '2') {
      //Área Quadrado
      return area = medidaA * medidaB;
    } else if (tipo == '3') {
      //Área Retângulo
      return area = medidaA * medidaB;
    } else if (tipo == '4') {
      return area = (medidaA * medidaA) * medidaB;
    }
    area = 0;
    return area;
  }
}

void main() {
  String tipoF;
  double medidaA;
  double medidaB;

  print("--------------Menu de Opções--------------");
  print("--------------Digite o tipo da figura geométrica--------------");
  print("--------------1: Triângulo--------------");
  print("--------------2: Quadrado--------------");
  print("--------------3: Retângulo--------------");
  print("--------------4: Círculo--------------");
  tipoF = stdin.readLineSync() as String;
  print(
      "--------------Digite as duas medidas necessárias para calcular a àrea da figura--------------");
  print("--------------Medida 1:--------------");
  medidaA = stdin.readLineSync() as double;
  print("--------------Medida 2--------------");
  medidaB = stdin.readLineSync() as double;

  var result = GeometryCalculator().areaFigura(tipoF, medidaA, medidaB);
  print("--------------Resultado da área da figura é: $result--------------");
}
