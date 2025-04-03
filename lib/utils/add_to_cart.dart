import 'package:flutter/material.dart';
import 'package:donut_app_4sa/utils/services/cart_services.dart';
import 'package:provider/provider.dart';

class AddToCartButton extends StatefulWidget {
  final Color buttonColor;
  final String donutPrice; // Añade esta línea

  const AddToCartButton({
    Key? key,
    required this.buttonColor,
    required this.donutPrice, // Añade este parámetro requerido
  }) : super(key: key);

  @override
  _AddToCartButtonState createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  @override
  Widget build(BuildContext context) {
    final cartService = Provider.of<CartService>(context);

    return TextButton(
      onPressed: () {
        cartService.addToCart(double.parse(widget.donutPrice));
      },
      child: Text(
        "ADD",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: widget.buttonColor,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
