// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/customAppBar.dart';
import '../widgets/customButtomPedido.dart';

class FormNumPedido extends StatefulWidget {
  const FormNumPedido({super.key});

  @override
  State<FormNumPedido> createState() => FormNumPedidoState();
}

class FormNumPedidoState extends State<FormNumPedido> {
  String numeroPedido = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Numero de Remessa'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              TextField(
                onChanged: (text) {},
                decoration: InputDecoration(
                    labelText: "Numero de Remessa",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 30,
              ),
              CustomButtomPedido(),
            ],
          ),
        ),
      ),
    );
  }
}
