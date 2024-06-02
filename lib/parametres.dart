import 'package:flutter/material.dart';
import 'gestion_de_stock.dart';
import 'promotions.dart';
import 'notifications.dart';
import 'statistiques.dart';

class parametres extends StatefulWidget {
  const parametres({Key? key}) : super(key: key);

  @override
  State<parametres> createState() => _ParametresState();
}

class _ParametresState extends State<parametres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SETTINGS',
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Container(
    decoration: BoxDecoration(
    image: DecorationImage(
        image: AssetImage('assets/backgroundadmin.png'), // Remplacez 'assets/background_image.jpg' par le chemin de votre image
    fit: BoxFit.cover,
    ),
    ),
      child :Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const gestion_de_stock()),
                    );
                    // Ajoutez votre logique pour le bouton Gestion de produit ici
                    print('Product management');
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 33), // Taille du texte du bouton
                    primary: Colors.purple,
                    shape: RoundedRectangleBorder( // Ajout de la forme arrondie au bouton
                      borderRadius: BorderRadius.circular(20), // Modifier la valeur de circular pour changer la courbure
                    ),// Couleur de fond du bouton
                  ),
                  child: const Text('Product management'),
                ),
              ),
              const SizedBox(height: 25.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const promotions()),
                    );
                    // Ajoutez votre logique pour le bouton Promotion ici
                    print('Promotion');
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 35), // Taille du texte du bouton
                    primary: Colors.purple,
                    shape: RoundedRectangleBorder( // Ajout de la forme arrondie au bouton
                      borderRadius: BorderRadius.circular(20), // Modifier la valeur de circular pour changer la courbure
                    ),// Couleur de fond du bouton
                  ),
                  child: const Text('Promotions'),
                ),
              ),
              const SizedBox(height: 25.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const notifications()),
                    );
                    // Ajoutez votre logique pour le bouton Notifications ici
                    print('Notifications');
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 35), // Taille du texte du bouton
                    primary: Colors.purple,
                    shape: RoundedRectangleBorder( // Ajout de la forme arrondie au bouton
                      borderRadius: BorderRadius.circular(20), // Modifier la valeur de circular pour changer la courbure
                    ),// Couleur de fond du bouton
                  ),
                  child: const Text('Notifications'),
                ),
              ),
              const SizedBox(height: 25.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const statistiques()),
                    );
                    // Ajoutez votre logique pour le bouton Statistiques ici
                    print('Statistics');
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 35), // Taille du texte du bouton
                    primary: Colors.purple,
                    shape: RoundedRectangleBorder( // Ajout de la forme arrondie au bouton
                      borderRadius: BorderRadius.circular(20), // Modifier la valeur de circular pour changer la courbure
                    ),// Couleur de fond du bouton
                  ),
                  child: const Text('Statistics'),
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: parametres(),
    ),
  );
}
