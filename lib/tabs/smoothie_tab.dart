import 'package:donut_app_4sa/utils/services/smoothies_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  final List smoothieOnSale = [
    // [ pizzaFlavor, pizzaPrice, pizzaColor, imageName ]
    [
      "Banana",
      "20",
      Colors.blue,
      "lib/images/smoothies/banana.png",
      "Pizza Hut"
    ],
    ["Ha", "25", Colors.red, "lib/images/pancakes/piña.png", "Little Caesars"],
    [
      "Chamoy",
      "25",
      Colors.purple,
      "lib/images/smoothies/chamoy.png",
      "Dominos"
    ],
    [
      "Helado",
      "23",
      Colors.pink,
      "lib/images/smoothies/frambuesa.png",
      "Papa Johns"
    ],
    [
      "Aceitunas",
      "20",
      Colors.blue,
      "lib/images/smoothie/fresa.png",
      "Pizza Hut"
    ],
    [
      "Pastor",
      "25",
      Colors.red,
      "lib/images/smoothie/kiwi.png",
      "Little Caesars"
    ],
    ["te", "25", Colors.purple, "lib/images/smoothies/mango.png", "Dominos"],
    [
      "Helado",
      "23",
      Colors.pink,
      "lib/images/smoothies/sandia.png",
      "Papa Johns"
    ],
  ];
  SmoothieTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //Prepa 1
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //Scroll personalizado
            //Número de column
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.5),

        //Cuantos elementos
        itemCount: 8,
        padding: const EdgeInsets.all(24.0),
        //Construir elementos
        itemBuilder: (context, index) {
          return SmoothieTile(
              smoothieFlavor: smoothieOnSale[index][0],
              smoothiePrice: smoothieOnSale[index][1],
              smoothieColor: smoothieOnSale[index][2],
              imageName: smoothieOnSale[index][3],
              smoothieStore: smoothieOnSale[index][4]);
        });
  }
}
