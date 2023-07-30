

import 'package:cocktail_machine/models/drink_model.dart';

class DataDrink{

static  List<DrinkModel> database = [
   DrinkModel("Cuba-Livre", "Cuba-libre ou cuba-livre é uma bebida alcoólica, ou um coquetel feito à base de rum, refrigerante de cola e limão. Atribui-se a invenção desta bebida aos soldados norte-americanos que ajudaram nas guerras da independência cubana em 1898, o que explicaria seu nome.", "asset/cuba-libre.jpeg", <int>[]),
    DrinkModel("Vodka Pura", "Absolut Vodka foi lançada no ano de 1979 em Nova Iorque. Inspirada em frascos de medicamentos do século XVIII, nossa garrafa transparente e sem rótulo se destacava entre as dezenas de garrafas altas e espalhafatosas da concorrência. Afinal, estamos falando da Nova Iorque da década de 1970. Era necessário ser diferente para ganhar atenção.", "asset/vodka.jpg", <int>[]),
];

static DrinkModel drinkTeste = DrinkModel("Cuba-Livre", "Cuba-libre ou cuba-livre é uma bebida alcoólica, ou um coquetel feito à base de rum, refrigerante de cola e limão. Atribui-se a invenção desta bebida aos soldados norte-americanos que ajudaram nas guerras da independência cubana em 1898, o que explicaria seu nome.", "asset/cuba-libre.jpeg", <int>[]);

}