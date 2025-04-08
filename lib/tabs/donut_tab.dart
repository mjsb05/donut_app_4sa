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
      "Choco",
      "23",
      Colors.pink,
      "lib/images/donuts/chocolate.png",
      "Morayta Donuts"
    ],
    [
      "Choco",
      "23",
      Colors.pink,
      "lib/images/donuts/chocolate.png",
      "Morayta Donuts"
    ],
    [
      "Choco",
      "23",
      Colors.pink,
      "lib/images/donuts/chocolate.png",
      "Morayta Donuts"
    ],
    [
      "Choco",
      "23",
      Colors.pink,
      "lib/images/donuts/chocolate.png",
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
            //Número de columna
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.5),

        //Cuantos elementos
        itemCount: 4,
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
