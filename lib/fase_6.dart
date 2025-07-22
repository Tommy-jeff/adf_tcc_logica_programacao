import 'dart:io';

void main() {
  print('please teel us your name: ');
  var nome = stdin.readLineSync();
  print('Dear, $nome. Welcome to CuidaPet!');
  print('''
    We offer many products and services for your PET.
  To purchase products, look for the collaorator Junior.
  Or if you need services like bath and grooming, look for the collaborator Neto.
  ''');
  print(
    'Thank you and we hope you have a great experience in our store!\n\n\n',
  );
  print('''Menu:
  1 - See products offers
  2 - See services offers
  ''');

  var option = stdin.readLineSync();
  print('You selected the option $option\n');
  if (option == '1') {
    print(
      'Dog food Royal Canin Indor 7,5 Kg with exclusive price of R\$ 280,00',
    );
  } else if (option == '2') {
    print('Dog Bath and Grooming with exclusive price of R\$ 54,00');
  }
}
