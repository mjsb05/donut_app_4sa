import 'package:flutter/material.dart';
import 'package:donut_app_4sa/utils/add_to_cart.dart';

class SmoothieTile extends StatelessWidget {
  final dynamic smoothieColor;
  final String smoothiePrice;
  final String smoothieFlavor;
  final String imageName;
  final String smoothieStore;

  const SmoothieTile(
      {super.key,
      required this.imageName,
      required this.smoothieColor,
      required this.smoothiePrice,
      required this.smoothieFlavor,
      required this.smoothieStore});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          //color: donutColor[50],
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24), //esquinas redondeadas
            color: smoothieColor[50],
          ),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                    color: smoothieColor[100],
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text("\$$smoothiePrice",
                      style: TextStyle(
                          color: smoothieColor[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                )
              ]),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                child: Image.asset(imageName),
              ),
              Text(smoothieFlavor,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  )),
              Text(smoothieStore,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: smoothieColor[800])),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border_outlined,
                          color: smoothieColor[800])),
                  AddToCartButton(
                    buttonColor: smoothieColor,
                    donutPrice: smoothiePrice,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
