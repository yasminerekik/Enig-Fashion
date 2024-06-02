import 'package:flutter/material.dart';
import 'femmes_de_stock.dart';

class gestion_de_stock extends StatefulWidget {
  const gestion_de_stock({Key? key}) : super(key: key);

  @override
  State<gestion_de_stock> createState() => _GenreState();
}

class _GenreState extends State<gestion_de_stock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CATALOG',
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.redAccent,
      ),
    body : Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/catadmin.png'), // Remplacez par le chemin de votre image
    fit: BoxFit.cover,
    ),
    ),
      child :Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),// Couleur de fond du bouton
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const femmes_de_stock()),
                );
                // Ajoutez le code à exécuter lorsque le bouton "Femmes" est pressé
              },
              child: Text('WOMEN', style: TextStyle(fontSize: 60)),
            ),
            SizedBox(height:10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                // Couleur de fond du bouton
              ),
              onPressed: () {
                // Ajoutez le code à exécuter lorsque le bouton "Hommes" est pressé
              },
              child: Text('MEN', style: TextStyle(fontSize: 60)),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),// Couleur de fond du bouton
              ),
              onPressed: () {
                // Ajoutez le code à exécuter lorsque le bouton "Enfants" est pressé
              },
              child: Text('KIDS', style: TextStyle(fontSize: 60)),
            ),
          ],
        ),
      ),
    ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: gestion_de_stock(),
  ));
}
