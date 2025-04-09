import 'package:flutter/material.dart';
import 'package:donut_app_4sa/utils/add_to_cart.dart';

class BurgerTile extends StatelessWidget {
  final dynamic burgerColor;
  final String burgerPrice;
  final String burgerFlavor;
  final String imageName;
  final String burgerStore;

  const BurgerTile(
      {super.key,
      required this.imageName,
      required this.burgerColor,
      required this.burgerPrice,
      required this.burgerFlavor,
      required this.burgerStore});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          //color: donutColor[50],
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24), //esquinas redondeadas
            color: burgerColor[50],
          ),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                    color: burgerColor[100],
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text("\$$burgerPrice",
                      style: TextStyle(
                          color: burgerColor[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                )
              ]),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                child: Image.asset(imageName),
              ),
              Text(burgerFlavor,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  )),
              Text(burgerStore,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: burgerColor[800])),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border_outlined,
                          color: burgerColor[800])),
                  AddToCartButton(
                    buttonColor: burgerColor,
                    donutPrice: burgerPrice,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
