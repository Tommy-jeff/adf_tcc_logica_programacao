import 'dart:io';

void main() {
  int? mainMenuOption;
  int? menuOption;

  String? promoCode;
  String? servCode;

  List<String> cart = [];
  double totalValue = 0;

  List<String> promoCodes = ['101', '102', '103', '104'];
  List<String> servCodes = ['201', '202', '203'];

  print(
    'Bem vindo ao autoatendimento do Cuidapet!\nPor favor, nos diga seu nome: ',
  );
  String? name = stdin.readLineSync() as String;

  if (name == 'cuidapetrestrito') {
    print('Olá cuidapet!\n');
  } else {
    do {
      print('''\nMENU - Digite a opção desejada:
1 - Ver promoções.
2 - solicitar serviço.
3 - Listar carrinho de compras.
4 - Finalizar carrinho de compras.
0 - Sair.''');
      mainMenuOption = int.parse(stdin.readLineSync() as String);

      switch (mainMenuOption) {
        case 1:
          String? descricaoItem;
          print(
            '''Promoções:
Código: 101 - Ração Royal Canin Indoor Para Cães Adultos De Porte Mini De Ambientes Internos 7,5kg na promoção pelo preço de R\$ 290,00.
Código: 102 - Ração Royal Canin Sterilised para Gatos Adultos Castrados e com o valor promocional de R\$ 492,00.
Código: 103 - Bifinho Keldog para Cães Porte Pequeno Sabor Carne e Cereais por R\$23,92.
Código: 104 - Fraldas Descartáveis Super Secão para Cães Machos com 12 Unidades R\$ 38,61.\n''',
          );
          do {
            print('''Opções:
8 - Adicionar item ao carrinho de compras.
0 - voltar ao menu principal.\n''');
            menuOption = int.parse(stdin.readLineSync() as String);

            if (menuOption != 8 && menuOption != 0) {
              print('Opção inválida!\n');
              continue;
            }

            if (menuOption == 8) {
              do {
                print('Código do produto: \n');
                promoCode = stdin.readLineSync() as String;

                if (!promoCodes.contains(promoCode)) {
                  print('Código inválido!\n');
                }
              } while (!promoCodes.contains(promoCode));

              switch (promoCode) {
                case '101':
                  descricaoItem = 'Ração Royal Canin Indoor 7,5kg: R\$ 290,00.';
                  totalValue += 290.00;
                  break;
                case '102':
                  descricaoItem = 'Ração Royal Canin Sterilised: R\$ 492,00.';
                  totalValue += 492.00;
                  break;
                case '103':
                  descricaoItem = 'Bifinho Keldog Carne e Cereais: R\$23,92.';
                  totalValue += 23.92;
                  break;
                case '104':
                  descricaoItem =
                      'Fraldas Descartáveis Super Secão 12 Unidades: R\$ 38,61.';
                  totalValue += 38.61;
                  break;
              }

              cart.add('$promoCode - $descricaoItem');
              print('Adicionado!\n');
            }
          } while (menuOption != 0);

          break;
        case 2:
          String? descricaoServico;
          print('''Serviços:
Código 201 - Banho e tosa - R\$ 55,99.
Código 202 - Tosa higienica -R\$ 12,99.
Código 203 - Hidratação dos pelos - R\$ 20,99.''');

          do {
            print('''Opções:
8 - Adicionar item ao carrinho de compras.
0 - voltar ao menu principal.\n''');
            menuOption = int.parse(stdin.readLineSync() as String);

            if (menuOption != 8 && menuOption != 0) {
              print('Opção inválida!\n');
              continue;
            }

            if (menuOption == 8) {
              do {
                print('Código do serviço: \n');
                servCode = stdin.readLineSync() as String;

                if (!servCodes.contains(servCode)) {
                  print('Código inválido!\n');
                }
              } while (!servCodes.contains(servCode));

              switch (servCode) {
                case '201':
                  descricaoServico = 'Banho e tosa: R\$ 55,99.';
                  totalValue += 55.99;
                  break;
                case '202':
                  descricaoServico = 'Tosa higienica: R\$ 12,99.';
                  totalValue += 12.99;
                  break;
                case '203':
                  descricaoServico = 'Hidratação dos pelos: R\$ 20,99.';
                  totalValue += 20.99;
                  break;
              }

              cart.add('$servCode - $descricaoServico');
              print('Adicionado!\n');
            }
          } while (menuOption != 0);

          break;
        case 3:
          print('\nSeu carrinho de compras:\n');
          for (int i = 0; i < cart.length; i++) {
            print('${i + 1} - ${cart[i]}');
          }
          print('Total: R\$ ${totalValue.toStringAsFixed(2)}\n');
          break;
        case 4:
          print('Finalizar carrinho de compras\n');
          break;
        case 0:
          print('Saindo...\n');
          break;
        default:
          print('Opção inválida!\n');
      }
    } while (mainMenuOption != 0);
  }
}
