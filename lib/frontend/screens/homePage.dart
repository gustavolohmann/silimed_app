// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/customAppBar.dart';
import '../widgets/customCarrousel.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Silimed'),
      body: Center(child: customCarrousel()),
    );
  }
}
