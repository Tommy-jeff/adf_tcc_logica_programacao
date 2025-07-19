import 'dart:io';

void main() {
  print('please teel us your name: ');
  var nome = stdin.readLineSync();
  print('Dear, $nome. Welcome to CuidaPet!');
  print('''We offer many products and services for your PET.
  To purchase products, look for the collaorator Junior.
  Or if you need services like bath and grooming, look for the collaborator Neto.
  ''');
  print('Thank you and we hope you have a great experience in our store!');
}
