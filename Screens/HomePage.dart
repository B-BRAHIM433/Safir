import 'dart:io';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:safir_app/Common%20Widgets/DrawerWidg.dart';
import 'package:safir_app/Screens/Favorite.dart';
import 'package:safir_app/Screens/Home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String screenRoute = '/HomePage';

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int bottomNavBarIndex = 0;
  List bodies = [
    Home(),
    Favorites(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.warning,
                animType: AnimType.rightSlide,
                title: 'Exit!',
                desc: 'Are you sure?',
                btnCancelOnPress: () {},
                btnOkOnPress: () {
                  exit(0);
                },
              ).show();
            },
            icon: const Icon(Icons.exit_to_app),
          )
        ],
      ),
      drawer: const DrawerWidg(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.pink[200],
          foregroundColor: Colors.white,
          child: const Icon(
            Icons.add,
            size: 30,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() => bottomNavBarIndex = index);
          },
          currentIndex: bottomNavBarIndex,
          selectedIconTheme: const IconThemeData(size: 35, color: Colors.black),
          unselectedIconTheme: IconThemeData(size: 28, color: Colors.grey[500]),
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: ""),
          ]),
      body: bodies[bottomNavBarIndex],
    );
  }
}
