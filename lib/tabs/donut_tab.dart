import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
  ];
  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //Prepa 1
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //Scroll personalizado
            //Número de columnas
            crossAxisCount: 2),
        //Cuantos elementos
        itemCount: 4,
        padding: const EdgeInsets.all(24.0),
        //Construir elementos
        itemBuilder: (context, index) {
          return DonutTile(
              donutFlavor: donutsOnSale[index][0],
              donutPrice: donutsOnSale[index][1],
              donutColor: donutsOnSale[index][2],
              imageName: donutsOnSale[index][3]);
        });
  }
}
