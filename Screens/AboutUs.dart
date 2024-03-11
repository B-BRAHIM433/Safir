import 'package:flutter/material.dart';
import 'package:safir_app/Common%20Widgets/DrawerWidg.dart';

class AboutUs extends StatefulWidget {
   const AboutUs({super.key});

  static const screenRoute = '/AboutUs';

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue ,
        actions: [IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_forward_outlined))],
      ),
      drawer: const DrawerWidg(),
      body: const Center(child: Text("About Us Page")),
    );
  }
}
