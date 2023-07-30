import 'package:cocktail_machine/controllers/drink_controller.dart';
import 'package:cocktail_machine/data/data_drink.dart';
import 'package:cocktail_machine/models/drink_model.dart';
import 'package:cocktail_machine/pages/components/drink_selector.dart';
import 'package:flutter/material.dart';





class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  late final DrinkController controller;

  @override
  void initState() {

    controller = DrinkController(()=>setState((){}));

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    final double wd = MediaQuery.of(context).size.width;


    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 165, 117, 72),
      appBar: AppBar(
        backgroundColor:Colors.brown.withOpacity(0.4),
        title:  const Text("Calestro CockTails Machine", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
        centerTitle: true,
        shadowColor: Colors.transparent,
      ),
      body:Stack(
        children: [
        Column(
          children: [
            Expanded(
              flex: 3,
              child: DrinkSelector(drink: controller.getDrink())),
             Container(
               decoration: BoxDecoration(
                 color: Colors.brown.withOpacity(0.3)
               ),
               child:Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                     GestureDetector(
                      onTap: ()=>controller.previousDrink(),
                      child: Icon(Icons.arrow_back, size: wd * 0.1,color: Colors.white,)),
                     
                     Container(
                       width: 200,
                        height: 50,
                        alignment: Alignment.center,  
                       decoration: BoxDecoration(
                         color: Colors.green.shade900,
                         borderRadius: const BorderRadius.all(Radius.circular(200))
                       ),
                       child: const Text("Iniciar", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                      
                     ),
                     GestureDetector(
                      onTap: ()=>controller.nextDrink(),
                      child: Icon(Icons.arrow_forward, size: wd * 0.1,color: Colors.white,)),
               
                 ],
               ),
             )
          
          ],
        ),

        
      ],
      )
    );
  }
}