// ignore_for_file: prefer_const_constructors, camel_case_types, must_be_immutable, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';

import '../screens/homePage.dart';

class customCarrousel extends StatelessWidget {
  const customCarrousel({super.key});

  LabelData getLabel(int index) {
    switch (index) {
      case 1:
        return LabelData(
          icon: const Icon(
            Icons.shopping_bag,
            size: 50,
            color: Colors.blue,
          ),
          text: 'Retirada de Produto',
        );
      case 2:
        return LabelData(
          icon: const Icon(
            Icons.loop,
            size: 50,
            color: Colors.green,
          ),
          text: 'Devolução',
        );
      case 3:
        return LabelData(
          icon: const Icon(
            Icons.local_hospital,
            size: 50,
            color: Colors.red,
          ),
          text: 'Médico',
        );
      case 4:
        return LabelData(
          icon: const Icon(
            Icons.store,
            size: 50,
            color: Colors.orange,
          ),
          text: 'Depósito de Produto',
        );
      default:
        return LabelData(
          icon: const Icon(Icons.error),
          text: 'Erro',
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        viewportFraction: 0.5,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 40),
        enlargeFactor: 0.2,
        enlargeCenterPage: true,
      ),
      items: [1, 2, 3, 4].map((i) {
        return Builder(
          builder: (BuildContext context) {
            final labelData = getLabel(i);
            final acao = labelData.text;
            return GestureDetector(
              onTap: () => GoRouter.of(context).push('/formPage?acao=$acao'),
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      labelData.icon,
                      Text(
                        labelData.text,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
