// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtomPedido extends StatelessWidget {
  String title = "Enviar";

  CustomButtomPedido({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ElevatedButton(
        onPressed: () {
          print("teste");
        },
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(
            Size(double.infinity, 48),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
