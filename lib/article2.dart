import 'package:flutter/material.dart';
import 'panier.dart';

class article2 extends StatefulWidget {
  const article2({Key? key}) : super(key: key);

  @override
  State<article2> createState() => _Article2State();
}

class _Article2State extends State<article2> {
  // Tailles disponibles
  List<String> sizes = ['XS', 'S', 'M', 'L'];
  // Couleurs disponibles
  List<Color> colors = [Colors.pinkAccent, Color(0xff97cbe2), Color(0xffd67f4d)];

  String selectedSize = 'M'; // Taille sélectionnée par défaut
  Color selectedColor = Colors.pinkAccent; // Couleur sélectionnée par défaut

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: Container(
        color: Color(0xFFDAB5F3),
        padding: EdgeInsets.fromLTRB(40, 32, 34, 27),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // slendergirlgreatmoodishavingfu (20:134)
              width: 340,
              height: 300,
              child: Image.asset(
                'assets/roberougee1.png',
                fit: BoxFit.cover, // Hauteur souhaitée de l'image
              ),
            ),
            Container(
              // autogroupcprsoYY (R3dgQnk9AkAaCjvZGucpRS)
              margin:  EdgeInsets.fromLTRB(0, 0, 0, 26),
              width:  double.infinity,
              child:
              Row(
                crossAxisAlignment:  CrossAxisAlignment.center,
                children:  [
                  Container(
                    // stripedpinkdresswPr (20:117)
                    margin:  EdgeInsets.fromLTRB(0, 0, 37, 0),
                    child:
                    Text(
                      'Red Dress',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 20 , // Modifier cette valeur pour changer la taille du texte
                        fontWeight: FontWeight.w600,
                        height: 2.5 ,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // id129900pyS (20:116)
                    margin:  EdgeInsets.fromLTRB(60, 0, 0, 0),
                    child:
                    Text(
                      'Id. 1,236.00\nPrice:175 TND',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 20 , // Modifier cette valeur pour changer la taille du texte
                        fontWeight: FontWeight.w600,
                        height: 1.5 ,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // tailleLwn (20:136)
              margin:  EdgeInsets.fromLTRB(5, 0, 0, 10),
              child:
              Text(
                'Size',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  height: 1.2125,
                  color: Color(0xff000000),
                ),
              ),
            ),
            SizedBox(height: 10),
            // Boutons de sélection de taille
            Row(
              children: sizes
                  .map(
                    (size) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSize = size;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: selectedSize == size ? Colors.red : Colors.white,
                      borderRadius: BorderRadius.circular(21),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Center(
                      child: Text(
                        size,
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          height: 1.2125,
                          color: selectedSize == size ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              )
                  .toList(),
            ),
            SizedBox(height: 20),
            // Couleur
            Text(
              'Color',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                height: 1.2125,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(height: 10),
            // Boutons de sélection de couleur
            Row(
              children: colors
                  .map(
                    (color) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedColor = color;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(21),
                      border: selectedColor == color
                          ? Border.all(color: Colors.black, width: 2)
                          : null,
                    ),
                  ),
                ),
              )
                  .toList(),
            ),
            SizedBox(height: 50),
            // Bouton "Ajouter au panier"
            Center(
              child: ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                ),
                child: Text(
                  'ADD TO CART',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: article2(),
  ));
}