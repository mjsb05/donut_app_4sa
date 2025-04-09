import 'package:donut_app_4sa/utils/services/panckakes_tile.dart';
import 'package:flutter/material.dart';

class PanCakesTab extends StatelessWidget {
  final List pancakesOnSale = [
    // [ pizzaFlavor, pizzaPrice, pizzaColor, imageName ]
    [
      "panqueues",
      "20",
      Colors.blue,
      "lib/images/pancakes/normales.png",
      "Pizza Hut"
    ],
    ["Ha", "25", Colors.red, "lib/images/pancakes/blue.png", "Little Caesars"],
    [
      "Chamfsdones",
      "25",
      Colors.purple,
      "lib/images/pancakes/choco.png",
      "Dominos"
    ],
    [
      "Helado",
      "23",
      Colors.pink,
      "lib/images/pancakes/fresas.png",
      "Papa Johns"
    ],
    [
      "Aceitunas",
      "20",
      Colors.blue,
      "lib/images/pancakes/abuela.png",
      "Pizza Hut"
    ],
    [
      "Pastor",
      "25",
      Colors.red,
      "lib/images/pancakes/platano.png",
      "Little Caesars"
    ],
    ["te", "25", Colors.purple, "lib/images/pancakes/te.png", "Dominos"],
    [
      "Helado",
      "23",
      Colors.pink,
      "lib/images/pancakes/abuela.png",
      "Papa Johns"
    ],
  ];
  PanCakesTab({super.key});

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
          return PanckakesTile(
              panckakesFlavor: pancakesOnSale[index][0],
              panckakesPrice: pancakesOnSale[index][1],
              panckakesColor: pancakesOnSale[index][2],
              imageName: pancakesOnSale[index][3],
              panckakesStore: pancakesOnSale[index][4]);
        });
  }
}
