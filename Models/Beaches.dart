import 'package:flutter/material.dart';
import 'package:safir_app/Models/HomeBody.dart';

class Beaches extends StatefulWidget {
  const Beaches({super.key});

  @override
  State<Beaches> createState() => _BeachesState();
}

class _BeachesState extends State<Beaches> {
  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;

    return HomeBody(title: '    Monuments');
  }
}
