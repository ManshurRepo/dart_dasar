import 'package:dart_belajar_udemy/data/sum.dart';
import 'package:dart_belajar_udemy/generic/bounded.dart';

void printData(NumberData data) {
  print(data.data);
}

void main() {
  var numberData = NumberData(10);

  int result = numberData.data;

  print(result);
}
