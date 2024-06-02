import 'package:flutter/material.dart';
import 'femme.dart';

class genre extends StatefulWidget {
  const genre({Key? key}) : super(key: key);

  @override
  State<genre> createState() => _GenreState();
}

class _GenreState extends State<genre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Image en arrière-plan
          Image.asset(
            'assets/catalogue.jpg', // Remplacez 'votre_image.jpg' par le chemin de votre image
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),// Couleur de fond du bouton
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const femmes()),
                    );
                    // Ajoutez le code à exécuter lorsque le bouton "Femmes" est pressé
                  },
                  child: Text('WOMEN', style: TextStyle(fontSize: 60)),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),// Couleur de fond du bouton
                  ),
                  onPressed: () {
                    // Ajoutez le code à exécuter lorsque le bouton "Hommes" est pressé
                  },
                  child: Text('MEN', style: TextStyle(fontSize: 60)),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
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
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: genre(),
  ));
}
