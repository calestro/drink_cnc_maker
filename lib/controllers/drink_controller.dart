


import 'package:cocktail_machine/data/data_drink.dart';

import '../models/drink_model.dart';

class DrinkController{

  final Function update;
  int _doSelect = 0;

  DrinkController(this.update);
  
  DrinkModel getDrink()=> DataDrink.database[_doSelect];


  void nextDrink(){
    if(DataDrink.database.length - 1 == _doSelect){
      _doSelect = 0;
    }else{
      _doSelect++;
    }
    update();
  }

  void previousDrink(){
    if(_doSelect == 0){
      _doSelect = DataDrink.database.length - 1;
    }else{
      _doSelect--;
    }
    update();
  }



    void initDrink(){
      
    }





}