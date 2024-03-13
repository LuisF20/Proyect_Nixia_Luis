import 'package:flutter/material.dart';

class amazon extends StatefulWidget {
  const amazon({super.key});

  @override
  State<amazon> createState() => _amazonscreenState();
}

List<String> principal = [
  'imagenes/zap2.png',
  'imagenes/guitarra.jpg',
  'imagenes/zapatos.jpg',
];

List<String> imageUrls = [
  'imagenes/skincare.jpg',
  'imagenes/guitarra.jpg',
  'imagenes/zapatos.jpg',
];

List<String> descriptions = [
  'Skin Care',
  'Guitarras',
  'Zapatos',
];

List<IconData> icons = [
  Icons.shopping_cart,
  Icons.shopping_cart,
  Icons.shopping_cart,
];

class _amazonscreenState extends State<amazon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 0, left: 10, right: 10),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.all(0.0)),
                Icon(
                  Icons.menu,
                  size: 40,
                ),
                SizedBox(
                  width: 18,
                ),
                Image.network(
                  "imagenes/logoamazon2.png",
                  height: 100,
                  width: 230,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Sign In",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color.fromARGB(240, 250, 147, 29),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Product here',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.filter_alt),
                    onPressed: () {},
                  ),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Bordes redondos
                    borderSide: BorderSide(
                        color: Color.fromARGB(
                            255, 223, 222, 222)), // Color del borde
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 38,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 40,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  padding: EdgeInsets.all(100),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(40.0), // Bordes redondeados
                    image: DecorationImage(
                      image: NetworkImage(
                        "imagenes/shoes.jpeg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          "Shoes For Men ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        "OFFER 50% ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  margin: EdgeInsets.only(top: 0.0),
                  child: ClipRRect(
                    //Ponerlo en rectángulo,
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.network(
                      'imagenes/puntitos1.png',
                      height: 50,
                      width: 450,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, top: 30, left: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Top Selling Product",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          "View All",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color.fromARGB(240, 250, 147, 29),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 40,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      3,
                      (index) => Container(
                        padding: EdgeInsets.all(8),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    imageUrls[index],
                                    width: 190,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                    height:
                                        12), // Espacio entre la imagen y el texto
                                Text(
                                  descriptions[
                                      index], // Acceder a la descripción correspondiente
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Icon(
                                icons[index],
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
