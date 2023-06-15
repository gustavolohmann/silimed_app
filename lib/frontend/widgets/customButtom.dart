// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomButton extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String acesso;
  final String senha;
  final String acao;

  CustomButton({
    super.key,
    required this.title,
    required this.acesso,
    required this.senha,
    required this.acao,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ElevatedButton(
        onPressed: () {
          /*
            var @acao : String;

            Verificar que tipo de operação o usuario está fazendo:
            Validar o acesso do ooperador com a api
            Redirecionar para a pagina de pedido
           */
          acesso == "" && acesso == ""
              ? print("error") /* Chamar o metedod de confirmação de operador */
              : GoRouter.of(context).push('/formNumPedido');
          /* 
            Consultar no banco de dados o acesso do operador
            Após a confirmação, realizar a operação desejada         
          */
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
            // Outras propriedades de estilo aqui
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
