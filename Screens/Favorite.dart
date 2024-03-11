import 'package:flutter/material.dart';
import 'package:safir_app/Models/ItemCard.dart';
import 'package:safir_app/Models/ItemsData.dart';
import 'package:safir_app/Screens/TripDettails.dart';

class Favorites extends StatefulWidget {
  const Favorites({
    super.key,
  });
  static const screenRoute = "/favorites";

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return favorites.isEmpty
        ? const Center(child: Text('No Favorites'))
        : GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1),
            itemCount: favorites.length,
            itemBuilder: (context, i) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, TripDet.screenRoute, arguments: {
                  'name': popItemsInfo[i].name,
                  'place': popItemsInfo[i].name,
                  'image': popItemsInfo[i].image,
                  'description': popItemsInfo[i].description,
                  'wheither': popItemsInfo[i].wheither,
                });
              },
              child: Container(
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        Image.network(
                          '${popItemsInfo[favorites[i]].image}',
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                        Positioned(
                            right: 15,
                            top: 15,
                            child: InkWell(
                              onTap: () {
                                setState(
                                  () {
                                    // favorites.removeAt(i);
                                  },
                                );
                              },
                              onLongPress: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10)),
                                height: 30,
                                width: 30,
                                child: const Icon(
                                  Icons.delete,
                                ),
                              ),
                            )),
                        Positioned(
                            left: 15,
                            top: 15,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.orange[400],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 30,
                              width: 30,
                              child: Icon(
                                iconWheither(favorites[i]),
                                color: Colors.black,
                              ),
                            )),
                        Container(
                          padding: const EdgeInsets.only(top: 8, left: 2),
                          margin: const EdgeInsets.only(top: 125),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5)
                              // gradient:
                              //     LinearGradient(colors: [Colors.white, Colors.grey])
                              ),
                          child: Column(
                            children: [
                              Text(
                                'Trip To ${popItemsInfo[favorites[i]].name}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.place_outlined,
                                    color: Colors.lightBlue,
                                  ),
                                  Text(
                                    '${popItemsInfo[favorites[i]].place} Morocco',
                                    style: const TextStyle(color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ]))),
            ),
          );
  }
}
