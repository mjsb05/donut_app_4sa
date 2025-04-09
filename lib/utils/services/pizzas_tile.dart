import 'package:flutter/material.dart';
import 'package:donut_app_4sa/utils/add_to_cart.dart';

class PizzasTile extends StatelessWidget {
  final dynamic pizzasColor;
  final String pizzasPrice;
  final String pizzasFlavor;
  final String imageName;
  final String pizzasStore;

  const PizzasTile(
      {super.key,
      required this.imageName,
      required this.pizzasColor,
      required this.pizzasPrice,
      required this.pizzasFlavor,
      required this.pizzasStore});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          //color: donutColor[50],
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24), //esquinas redondeadas
            color: pizzasColor[50],
          ),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                    color: pizzasColor[100],
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text("\$$pizzasPrice",
                      style: TextStyle(
                          color: pizzasColor[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                )
              ]),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                child: Image.asset(imageName),
              ),
              Text(pizzasFlavor,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  )),
              Text(pizzasStore,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: pizzasColor[800])),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border_outlined,
                          color: pizzasColor[800])),
                  AddToCartButton(
                    buttonColor: pizzasColor,
                    donutPrice: pizzasPrice,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
