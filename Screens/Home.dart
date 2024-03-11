import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:safir_app/Models/Beaches.dart';
import 'package:safir_app/Models/Monumentes.dart';
import 'package:safir_app/Models/Mountains.dart';
import 'package:safir_app/Widgets/PopularTrips.dart';

Column rowItems(Function? fun(), IconData icon, String title, Color color) {
  return Column(
    children: [
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: color,
            ),
            child: IconButton(
              onPressed: fun,
              icon: Icon(
                icon,
                size: 35,
                color: Colors.white,
              ),
            )),
      ),
      Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black54),
      )
    ],
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var choosenBody = 0;
  List<Widget> Items = [
    const PopularTrip(),
    const Beaches(),
    const Mountains(),
    const Monuments(),
  ];

  @override
  Widget build(BuildContext context) {
    var screenH = MediaQuery.of(context).size.height;
    var scrrenW = MediaQuery.of(context).size.width;
    return ListView(children: [
      Container(
        padding: const EdgeInsets.all(20),
        height: screenH / (2.4),
        width: scrrenW,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Expanded(
              child: Text(
                "Welcome ",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Form(
                  child: TextFormField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  hintText: 'Search...',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                  prefixIcon: const Icon(Icons.search_rounded),
                  prefixIconColor: Colors.orangeAccent,
                  filled: true,
                  fillColor: Colors.grey[150],
                ),
              )),
            ),
            Expanded(
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: rowItems(() {
                            setState(() {
                              choosenBody = 0;
                            });
                          }, Icons.control_point_duplicate_rounded, 'Popular',
                              Colors.pinkAccent)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: rowItems(() {
                          setState(() {
                            choosenBody = 1;
                          });
                        }, Icons.wb_sunny_outlined, 'Beache',
                            Colors.deepOrange),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: rowItems(() {
                          setState(() {
                            choosenBody = 2;
                          });
                        }, FontAwesomeIcons.mountainSun, 'Mountains',
                            Colors.green),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: rowItems(() {
                            setState(() {
                              choosenBody = 3;
                            });
                          }, Icons.castle, 'monuments', Colors.lightBlue)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: rowItems(() {
                          setState(() {
                            choosenBody = 0;
                          });
                        }, FontAwesomeIcons.compass, 'Others',
                            Colors.purpleAccent),
                      ),
                    ]),
              ]),
            )
          ],
        ),
      ),
      Items[choosenBody],
    ]);
  }
}
