import 'package:flutter/material.dart';
import 'package:safir_app/Models/ItemsData.dart';
import 'package:safir_app/Screens/TripDettails.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({super.key});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

// List<bool> isFavList = List.filled(popItemsInfo.length, false);
IconData? iconWheither(int i) {
  if (popItemsInfo[i].wheither == 'Summer') {
    return Icons.wb_sunny_outlined;
  } else if (popItemsInfo[i].wheither == 'Spring') {
    return Icons.nature_people_outlined;
  } else if (popItemsInfo[i].wheither == 'Fall') {
    return Icons.no_meals_ouline; //Try to change this later
  } else if (popItemsInfo[i].wheither == 'Winter') {
    return Icons.cloudy_snowing;
  } else {
    return Icons.all_inclusive_outlined;
  }
}

List favorites = [];
List<Color?> favIconColorList = List.filled(popItemsInfo.length, Colors.black);

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 10),
      itemCount: popItemsInfo.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.pushNamed(context, TripDet.screenRoute, arguments: {
            'name': popItemsInfo[index].name,
            'place': popItemsInfo[index].place,
            'image': popItemsInfo[index].image,
            'description': popItemsInfo[index].description,
            'wheither': popItemsInfo[index].wheither,
          });
        },
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onLongPress: () {
                setState(
                  () {
                    // isFavList[index] = !isFavList[index];
                    favorites.contains(index)
                        ? favorites.remove(index)
                        : favorites.add(index);
                    favorites.contains(index)
                        ? favIconColorList[index] = Colors.red
                        : favIconColorList[index] = Colors.black;
                  },
                );
              },
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    Image.network(
                      '${popItemsInfo[index].image}',
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
                                // isFavList[index] = !isFavList[index];
                                favorites.contains(index)
                                    ? favorites.remove(index)
                                    : favorites.add(index);
                                favorites.contains(index)
                                    ? favIconColorList[index] = Colors.red
                                    : favIconColorList[index] = Colors.black;
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
                            child: Icon(
                              Icons.favorite_outlined,
                              color: favIconColorList[index],
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
                            iconWheither(index),
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
                            '${popItemsInfo[index].name}',
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
                                '${popItemsInfo[index].place} Morocco',
                                style: const TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ])),
            )),
      ),
    );
  }
}
