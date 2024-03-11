import 'package:flutter/material.dart';
import 'package:safir_app/Screens/AboutUs.dart';
import 'package:safir_app/Screens/Favorite.dart';
import 'package:safir_app/Screens/HomePage.dart';
import 'package:safir_app/Screens/TripDettails.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Safir',
      routes: {
        HomePage.screenRoute:(context) => const HomePage(),
        AboutUs.screenRoute:(context)=> const AboutUs(),
        TripDet.screenRoute: (context) =>  const TripDet(),
        Favorites.screenRoute:(context) => const Favorites(),
      },
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const PassToCirc()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.network('https://plus.unsplash.com/premium_photo-1663045417579-c85eb24c4623?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzd8fHRyYXZlbGxpbmclMjBkZXNpZ258ZW58MHx8MHx8fDA%3D',  fit: BoxFit.cover),
        )
      ),
    );
  }
}


class PassToCirc extends StatefulWidget {
  const PassToCirc({super.key});


  @override
  State<PassToCirc> createState() => _PassToCircState();
}

class _PassToCircState extends State<PassToCirc> {
  @override
  void initState(){
    super.initState();
    Future.delayed(
      const Duration(seconds: 3), (){
        Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
      }
    );}
    @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator()
      ),
    );
  }
  
}

