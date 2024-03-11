import 'package:flutter/material.dart';
import 'package:safir_app/Screens/AboutUs.dart';
import 'package:safir_app/Screens/HomePage.dart';

class DrawerWidg extends StatelessWidget {
  const DrawerWidg({super.key});

  ListTile drawerItems(IconData icon, String title, Function? ItemFunction()) {
    return ListTile(
      onTap: ItemFunction,
      iconColor: Colors.grey[800],
      leading: Icon(icon),
      title: Text(title),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.grey[200],
        child: ListView(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              child: Stack(children: [
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1499591934245-40b55745b905?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHJhdmVsbGluZ3xlbnwwfHwwfHx8MA%3D%3D',
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )),
                Container(
                    height: double.infinity,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Your tourist guide',
                            style: TextStyle(
                                color: Colors.deepPurple[100]!.withOpacity(0.8),
                                fontSize: 28,
                                fontFamily: 'Playfair',
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'In Morocco ',
                            style: TextStyle(
                                color: Colors.deepPurple[100],
                                fontSize: 28,
                                fontFamily: 'Playfair',
                                fontWeight: FontWeight.bold),
                          ),
                        ]))
              ]),
            ),
            drawerItems(Icons.home_outlined, 'Home', () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  HomePage.screenRoute, (route) => false);
              return null;
            }),
            const Divider(
              thickness: 2,
            ),
            drawerItems(Icons.favorite_outline, 'Favorites', () {
              // HomePageState().bottomNavBarIndex = 0;
              Navigator.of(context).pushNamedAndRemoveUntil(
                  HomePage.screenRoute, (route) => false);
              return null;
            }),
            const Divider(
              thickness: 2,
            ),
            drawerItems(Icons.email, 'Contact us', () {
              return null;
            }),
            const Divider(
              thickness: 2,
            ),
            drawerItems(Icons.info_outline, 'About us', () {
              Navigator.of(context).pushNamed(AboutUs.screenRoute);
              return null;
            }),
            const Divider(
              thickness: 2,
            ),
            drawerItems(Icons.lock_outline, 'Privacy & Policy', () {
              return null;
            }),
            const Divider(
              thickness: 2,
            ),
            drawerItems(Icons.usb_outlined, 'Terms of Use', () {
              return null;
            }),
          ],
        ));
  }
}
