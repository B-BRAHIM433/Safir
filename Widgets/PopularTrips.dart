import 'package:flutter/material.dart';
import 'package:safir_app/Models/ItemCard.dart';

class PopularTrip extends StatelessWidget {
  const PopularTrip({super.key});


  @override
  Widget build(BuildContext context) {
    var screenH = MediaQuery.of(context).size.height;
    return Container(
          padding: const EdgeInsets.only(top: 20, left: 5, right: 5, bottom: 10),
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30))),
          child: Column(
            children: [
              SizedBox(
                height: screenH / 20,
                width: double.infinity,
                child: const Text(
                  '   Popular trips ',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              const ItemCard(),
            ],
          ));
  }
}