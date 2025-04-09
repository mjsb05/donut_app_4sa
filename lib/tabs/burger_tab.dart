import 'package:flutter/material.dart';
import 'package:donut_app_4sa/utils/services/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  //list of burguers

  final List burgersOnSale = [
    ["1", "20", Colors.blue, "lib/images/burguer/simple.png", "Krispy Kreme"],
    ["2", "20", Colors.blue, "lib/images/burguer/pollo.png", "Krispy Kreme"],
    ["3", "20", Colors.blue, "lib/images/burguer/Cheese.png", "Krispy Kreme"],
    [
      "4",
      "20",
      Colors.blue,
      "lib/images/burguer/vegetarian.png",
      "Krispy Kreme"
    ],
    ["5", "20", Colors.blue, "lib/images/burguer/bbq.png", "Krispy Kreme"],
    ["6", "20", Colors.blue, "lib/images/burguer/tapa.png", "Krispy Kreme"],
    ["7", "20", Colors.blue, "lib/images/burguer/rubius.png", "Krispy Kreme"],
    ["8", "20", Colors.blue, "lib/images/burguer/triple.png", "Krispy Kreme"]
  ];
  BurgerTab({super.key});

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
          return BurgerTile(
              burgerFlavor: burgersOnSale[index][0],
              burgerPrice: burgersOnSale[index][1],
              burgerColor: burgersOnSale[index][2],
              imageName: burgersOnSale[index][3],
              burgerStore: burgersOnSale[index][4]);
        });
  }
}
