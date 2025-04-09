import 'package:flutter/material.dart';
import 'package:donut_app_4sa/utils/add_to_cart.dart';

class PanckakesTile extends StatelessWidget {
  final dynamic panckakesColor;
  final String panckakesPrice;
  final String panckakesFlavor;
  final String imageName;
  final String panckakesStore;

  const PanckakesTile(
      {super.key,
      required this.imageName,
      required this.panckakesColor,
      required this.panckakesPrice,
      required this.panckakesFlavor,
      required this.panckakesStore});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          //color: donutColor[50],
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24), //esquinas redondeadas
            color: panckakesColor[50],
          ),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                    color: panckakesColor[100],
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text("\$$panckakesPrice",
                      style: TextStyle(
                          color: panckakesColor[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                )
              ]),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                child: Image.asset(imageName),
              ),
              Text(panckakesFlavor,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  )),
              Text(panckakesStore,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: panckakesColor[800])),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border_outlined,
                          color: panckakesColor[800])),
                  AddToCartButton(
                    buttonColor: panckakesColor,
                    donutPrice: panckakesPrice,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
