import 'package:donut_app_4sa/utils/services/pizzas_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final List pizzasOnSale = [
    // [ pizzaFlavor, pizzaPrice, pizzaColor, imageName ]
    [
      "Pepperoni",
      "20",
      Colors.blue,
      "lib/images/pizzas/peperoni.png",
      "Pizza Hut"
    ],
    [
      "Hawaiana",
      "25",
      Colors.red,
      "lib/images/pizzas/hawaiian.png",
      "Little Caesars"
    ],
    [
      "Champiñones",
      "25",
      Colors.purple,
      "lib/images/pizzas/champiñones.png",
      "Dominos"
    ],
    [
      "Cuatro Quesos",
      "23",
      Colors.pink,
      "lib/images/pizzas/cuatro.png",
      "Papa Johns"
    ],
    [
      "Aceitunas",
      "20",
      Colors.blue,
      "lib/images/pizzas/aceitunas.png",
      "Pizza Hut"
    ],
    [
      "Pastor",
      "25",
      Colors.red,
      "lib/images/pizzas/pastor.png",
      "Little Caesars"
    ],
    ["te", "25", Colors.purple, "lib/images/pizzas/te.png", "Dominos"],
    [
      "Helado",
      "23",
      Colors.pink,
      "lib/images/pizzas/pizzahelado.png",
      "Papa Johns"
    ],
  ];
  PizzaTab({super.key});

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
          return PizzasTile(
              pizzasFlavor: pizzasOnSale[index][0],
              pizzasPrice: pizzasOnSale[index][1],
              pizzasColor: pizzasOnSale[index][2],
              imageName: pizzasOnSale[index][3],
              pizzasStore: pizzasOnSale[index][4]);
        });
  }
}
