class Item {
  int? id;
  String? name;
  String? place;
  String? wheither;
  String? image;
  String? description;

  Item({
    this.id,
    this.name,
    this.place,
    this.wheither,
    this.image,
    this.description,
  });
}

List<Item> popItemsInfo = [
  Item(
      id: 1,
      name: "Jamae El Fana",
      place: "Marrakech",
      image:
          'https://images.unsplash.com/photo-1587974928442-77dc3e0dba72?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWFycmFrZWNofGVufDB8fDB8fHww',
      wheither: "Spring",
      description:
          "Marrakech, known for its vibrant souks, historic medina, and iconic Jardin Majorelle, is best visited during the pleasant seasons of spring and fall. Explore the bustling Djemaa el Fna square and immerse yourself in the rich culture and architecture of this enchanting city."),
  Item(
      id: 2,
      name: "Dar Dabagh",
      place: "Fes",
      image:
          'https://images.unsplash.com/photo-1553898439-93ac04cfe972?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZmVzfGVufDB8fDB8fHww',
      wheither: "Spring",
      description:
          "Fes, home to the oldest university in the world, offers a glimpse into Morocco's medieval history. The medina, a UNESCO World Heritage site, is a maze of narrow alleys filled with artisan workshops and traditional markets. Spring and fall provide ideal weather for exploring this ancient city."),
  Item(
      id: 3,
      name: "Chefchaouen",
      place: "Chefchaouen",
      image:
          'https://plus.unsplash.com/premium_photo-1697730005023-b37c4b835e94?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Q2hlZmNoYW91ZW58ZW58MHx8MHx8fDA%3D',
      wheither: "Summer",
      description:
          "Known for its blue-painted streets and buildings, Chefchaouen is a picturesque town nestled in the Rif Mountains. Spring and summer offer mild temperatures, making it perfect for wandering through the charming alleys and enjoying the unique atmosphere of this 'Blue City'."),
  Item(
      id: 4,
      name: "Sahara Desert",
      place: "Merzouga",
      image:
          'https://plus.unsplash.com/premium_photo-1701165850455-0b995c1c12e7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8TWVyem91Z2F8ZW58MHx8MHx8fDA%3D',
      wheither: "Fall",
      description:
          "For a unique desert experience, visit Merzouga on the edge of the Sahara Desert. Fall and winter offer cooler temperatures for camel treks and camping under the starry desert sky. Witness the mesmerizing sunrise and sunset over the dunes."),
  Item(
      id: 5,
      name: "Essaouira",
      place: "Essaouira",
      image:
          'https://images.unsplash.com/photo-1613057157282-cc3cbe630b26?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8RXNzYW91aXJhfGVufDB8fDB8fHww',
      wheither: "Summer",
      description:
          "A coastal gem, Essaouira boasts a relaxed atmosphere with its historic medina, seaside ramparts, and vibrant art scene. Spring and summer bring mild temperatures, making it an ideal time to explore the charming streets and enjoy the coastal breeze."),
  Item(
      id: 6,
      name: "Atlas Mountains",
      place: "Imlil",
      image:
          'https://images.unsplash.com/photo-1527528635755-d2ed9370e552?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8QXRsYXMlMjBNb3VudGFpbnN8ZW58MHx8MHx8fDA%3D',
      wheither: "Winter",
      description:
          "The Atlas Mountains, with their stunning landscapes and Berber villages, are best explored during the moderate temperatures of spring and fall. Imlil serves as a gateway for trekking and discovering the natural beauty of the High Atlas region."),
  Item(
      id: 6,
      name: "Casablanca",
      place: "Casablanca",
      image:
          'https://plus.unsplash.com/premium_photo-1697729726646-c01faa307c41?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y2FzYWJsYW5jYSUyMG1vc3F1ZXxlbnwwfHwwfHx8MA%3D%3D',
      wheither: "Summer",
      description:
          "As Morocco's economic hub, Casablanca is a modern city with a blend of contemporary and traditional elements. With a mild climate year-round, visitors can explore landmarks like the Hassan II Mosque, stroll along the Corniche, and experience the city's cosmopolitan vibe.")
];
