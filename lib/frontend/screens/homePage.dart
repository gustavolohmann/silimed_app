import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';

import 'formPage.dart';


class LabelData {
  final Icon icon;
  final String text;

  LabelData({required this.icon, required this.text});
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent[100],
        title: Text(widget.title),
      ),
      body: Center(
        child: CarouselSlider(
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
                return GestureDetector(
                  onTap: () => GoRouter.of(context).push('/formPage'),
                    child:Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 1),
                            blurRadius: 5,
                            spreadRadius: 1,
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
        ),
      ),
    );
  }
}