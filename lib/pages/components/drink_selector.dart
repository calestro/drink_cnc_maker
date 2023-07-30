import 'package:cocktail_machine/models/drink_model.dart';
import 'package:flutter/material.dart';




class DrinkSelector extends StatelessWidget {
  final DrinkModel drink;
  
  const DrinkSelector({super.key, required this.drink});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox.fromSize(
                        size:const Size.fromHeight(double.maxFinite),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(48),
                        child: Image.asset(drink.urlImage, fit: BoxFit.cover,))),
                  ),
                )),
        
                Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(28),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(22),
                        decoration: BoxDecoration(color: Colors.green.shade900, borderRadius: const BorderRadius.all(Radius.circular(20))),
                        child: Text(drink.drinkName, style:  const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),textAlign: TextAlign.center)),
                      const SizedBox(height: 20),
                      Text(drink.textDescription,textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}