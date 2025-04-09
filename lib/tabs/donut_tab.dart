import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    [
      "Classic",
      "20",
      Colors.blue,
      "lib/images/donuts/glaciada.png",
      "Krispy Kreme"
    ],
    [
      "Blaca Nieve",
      "25",
      Colors.red,
      "lib/images/donuts/blanca.png",
      "Dunkin Donuts"
    ],
    [
      "Fresa",
      "25",
      Colors.purple,
      "lib/images/donuts/Pink.png",
      "Tizimin Donuts"
    ],
    [
      "Choco",
      "23",
      Colors.pink,
      "lib/images/donuts/chocolate.png",
      "Morayta Donuts"
    ],
    [
      "Piña loca",
      "28",
      Colors.pink,
      "lib/images/donuts/piña.png",
      "Morayta Donuts"
    ],
    [
      "Rellena",
      "30",
      Colors.pink,
      "lib/images/donuts/rellena.png",
      "Morayta Donuts"
    ],
    [
      "Brownie",
      "30",
      Colors.pink,
      "lib/images/donuts/brownie.png",
      "Morayta Donuts"
    ],
    [
      "Bites",
      "35",
      Colors.pink,
      "lib/images/donuts/bites.png",
      "Morayta Donuts"
    ],
  ];
  DonutTab({super.key});

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
          return DonutTile(
              donutFlavor: donutsOnSale[index][0],
              donutPrice: donutsOnSale[index][1],
              donutColor: donutsOnSale[index][2],
              imageName: donutsOnSale[index][3],
              donutStore: donutsOnSale[index][4]);
        });
  }
}
