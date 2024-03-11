import 'package:flutter/material.dart';

class TripDet extends StatefulWidget {
  const TripDet({super.key});

  static const screenRoute = '/Trip Dettails';

  @override
  State<TripDet> createState() => _TripDetState();
}

class _TripDetState extends State<TripDet> {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String name = args['name'];
    final String place = args['place'];
    final String image = args['image'];
    final String description = args['description'];
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SizedBox(
      height: screenHeight,
      width: double.infinity,
      child: Stack(
        children: [
          Image.network(image,
              height: MediaQuery.of(context).size.height / 2,
              fit: BoxFit.cover),
          Positioned(
              left: 20,
              top: 60,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200],
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_outlined),
                ),
              )),
          Container(
              margin: EdgeInsets.only(top: screenHeight / 2.1),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListTile(
                      titleTextStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 22),
                      trailing: IconButton(
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      title: Text(name),
                      subtitle: Row(children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: Colors.red,
                        ),
                        Text(
                          '$place Morocco',
                          style: const TextStyle(fontSize: 16),
                        )
                      ]),
                    ),
                    const Text(
                      'About the Visit: ',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text('   $description',
                        style: const TextStyle(fontSize: 17)),
                    const Text(
                      'Transportation & Resorts: ',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 100,
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.3,
                          crossAxisCount: 1,
                          mainAxisSpacing: 10.0,
                        ),
                        itemCount: 30,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            color: Colors.grey[100],
                            child: ListTile(
                              title: Text('Restau Heathy'),
                              titleTextStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.black54),
                              subtitle: Text('fast food indj jsksj djsn '),
                              contentPadding: EdgeInsets.all(4),
                              trailing: Icon(Icons.restaurant_outlined),
                            ),
                          );
                        },
                      ),
                    ),
                  ]))
        ],
      ),
    ));
  }
}
