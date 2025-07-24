import 'dart:io';

void main() {
  final int accessCode = 1234;
  double totalValue = 0;
  int promotion2Count = 0;
  bool continueProgram = true;
  int internalAttendance = 0;
  int automaticAttendance = 0;

  while (continueProgram) {
    print('please teel us your name: ');
    String? name = stdin.readLineSync() as String;

    if (name == 'cuidapetrestrito') {
      print('Please enter the access code: ');
      String? readAccessCode = stdin.readLineSync() as String;
      int access = int.parse(readAccessCode);
      if (access != accessCode) {
        print('Access denied, goodbye!\n');
        return;
      }
      print('Access granted!\n');
      print('inform items and services\n');

      print('Client purchase a Dog food Royal Canin Indor 7,5 Kg? y/n: ');
      String? readDogFood = stdin.readLineSync() as String;
      readDogFood == 'y' ? totalValue += 280.00 : totalValue;

      print('Client purchase a Dog Bath and Grooming? y/n: ');
      String? readDogBath = stdin.readLineSync() as String;
      if (readDogBath == 'y') {
        totalValue += 54.00;
        promotion2Count++;
      }

      print('Client purchase a Hidration? y/n: ');
      String? readHidration = stdin.readLineSync() as String;
      if (readHidration == 'y') {
        totalValue += 30.00;
        promotion2Count++;
      }

      print('Client purchase a Dog Clothes? y/n: ');
      String? readDogClothes = stdin.readLineSync() as String;
      readDogClothes == 'y' ? totalValue += 50.00 : totalValue;

      print('Client purchase a New Services? y/n: ');
      String? readNewServices = stdin.readLineSync() as String;
      readNewServices == 'y' ? totalValue += 100.00 : totalValue;

      if (promotion2Count >= 2) {
        print('Cupom of 20% off aplied!\n');
        totalValue *= 0.8;
      }

      print('Total value: R\$ ${totalValue.toStringAsFixed(2)}\n');
      print('Thank you for your purchase!');
      print('Have a nice day!\n');
      internalAttendance++;

      print('Go to next? y/n: ');
      String? readGoToNext = stdin.readLineSync() as String;
      readGoToNext == 'y' ? continueProgram = true : continueProgram = false;
    } else {
      print('Dear, $name. Welcome to CuidaPet!');
      print('''
    We offer many products and services for your PET.
  To purchase products, look for the collaorator Junior.
  Or if you need services like bath and grooming, look for the collaborator Neto.
  ''');
      print(
        'Thank you and we hope you have a great experience in our store!\n\n\n',
      );
      print('''Menu:
  1 - See products offers.
  2 - See services offers.
  3 - See pet clothes.
  4 - See new services.
  5 - Promotion | 10% off.
  6 - Promotion || 20% off.
  7 - Exit
  ''');

      String? readOption = stdin.readLineSync() as String;
      int option = int.parse(readOption);
      print('You selected the option $option\n');

      automaticAttendance++;

      switch (option) {
        case 1:
          print(
            'Dog food Royal Canin Indor 7,5 Kg with exclusive price of R\$ 280,00',
          );
          break;
        case 2:
          print('Dog Bath and Grooming with exclusive price of R\$ 54,00');
          break;
        case 3:
          print('Dog Clothes with exclusive price of R\$ 50,00');
          break;
        case 4:
          print('New Services with exclusive price of R\$ 100,00');
          break;
        case 5:
          print(
            'Buy one 15 Kg bag of feed (R\$ 345,99) and get 10% off in bath',
          );
          break;
        case 6:
          print(
            'Buy one bath with grooming and hidration and get 20% off in total',
          );
          break;
        case 7:
          print('Goodbye!\n');
          continueProgram = false;
          break;
        default:
          print('Invalid option!\n');
      }
    }
  }

  print('End of program!\n');
  print('Internal attendance: $internalAttendance');
  print('Automatic attendance: $automaticAttendance');
}
