import 'package:flutter/material.dart';
import 'package:safir_app/Models/ItemCard.dart';
import 'package:safir_app/Screens/Home.dart';

class HomeBody extends StatefulWidget {
   HomeBody({super.key, this.title});
  String? title;

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
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
              child: Text(
                 '${HomeBody().title}',
                textAlign: TextAlign.start,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            const ItemCard(),
          ],
        ));
  }
}
