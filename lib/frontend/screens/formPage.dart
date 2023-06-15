// ignore_for_file: unused_local_variable, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/customAppBar.dart';
import '../widgets/customButtom.dart';

class FormPage extends StatefulWidget {
  final String acao;

  FormPage({Key? key, required this.acao}) : super(key: key);

  @override
  State<FormPage> createState() => _MyFormPage();
}

class _MyFormPage extends State<FormPage> {
  String acesso = "";
  String senha = "";

  @override
  Widget build(BuildContext context) {
    final String acao = widget.acao;
    return Scaffold(
      appBar: CustomAppBar(title: acao),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              TextField(
                onChanged: (text) {
                  acesso = text;
                },
                decoration: InputDecoration(
                    labelText: "Acesso", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                onChanged: (text) {
                  senha = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 15,
              ),
              CustomButton(
                  title: "Enviar", acesso: acesso, senha: senha, acao: acao)
            ],
          ),
        ),
      ),
    );
  }
}
