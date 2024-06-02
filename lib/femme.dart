import 'package:flutter/material.dart';
import 'robes.dart';
import 'tshirts.dart';
import 'jeans.dart';
class femmes extends StatefulWidget {
  const femmes({Key? key}) : super(key: key);

  @override
  State<femmes> createState() => _FemmesState();
}

class _FemmesState extends State<femmes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
    body : Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/cataloguefemme.png'), // Remplacez par le chemin de votre image
    fit: BoxFit.cover,
    ),
    ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),// Couleur de fond du bouton
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const robes()),
                );
                // Ajoutez le code à exécuter lorsque le bouton "Robes" est pressé
              },
              child: Text('Dresses', style: TextStyle(fontSize: 50)),
            ),
            SizedBox(height: 35),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),// Couleur de fond du bouton
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const tshirts()),
                );
                // Ajoutez le code à exécuter lorsque le bouton "T-shirts" est pressé
              },
              child: Text('T-shirts', style: TextStyle(fontSize: 50)),
            ),
            SizedBox(height: 35),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),// Couleur de fond du bouton
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const jeans()),
                );
                // Ajoutez le code à exécuter lorsque le bouton "Jeans" est pressé
              },
              child: Text('Jeans', style: TextStyle(fontSize: 50)),
            ),
            SizedBox(height: 35),

          ],
        ),
      ),
    ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: femmes(),
  ));
}