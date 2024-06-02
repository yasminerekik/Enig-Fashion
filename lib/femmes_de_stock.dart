import 'package:flutter/material.dart';
import 'robes_de_stock.dart';
import 'tshirts_de_stock.dart';
import 'jeans_de_stock.dart';
import 'ajoutautres.dart';

class femmes_de_stock extends StatefulWidget {
  const femmes_de_stock({Key? key}) : super(key: key);

  @override
  State<femmes_de_stock> createState() => _FemmesDeStockState();
}

class _FemmesDeStockState extends State<femmes_de_stock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/femmecatalogue.jpg'), // Remplacez par le chemin de votre image
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pinkAccent,
                  shape: RoundedRectangleBorder( // Ajout de la forme arrondie au bouton
                    borderRadius: BorderRadius.circular(30), // Modifier la valeur de circular pour changer la courbure
                  ),// Couleur de fond du bouton
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const robes_de_stock()),
                  );
                  // Logique pour la navigation vers la page des robes
                },
                child: Text('Dresses', style: TextStyle(fontSize: 50)),
              ),
              SizedBox(height: 35),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pinkAccent,
                  shape: RoundedRectangleBorder( // Ajout de la forme arrondie au bouton
                    borderRadius: BorderRadius.circular(30), // Modifier la valeur de circular pour changer la courbure
                  ),// Couleur de fond du bouton
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const tshirts_de_stock()),
                  );
                  // Logique pour la navigation vers la page des T-shirts
                },
                child: Text('T-shirts', style: TextStyle(fontSize: 50)),
              ),
              SizedBox(height: 35),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pinkAccent,
                  shape: RoundedRectangleBorder( // Ajout de la forme arrondie au bouton
                    borderRadius: BorderRadius.circular(30), // Modifier la valeur de circular pour changer la courbure
                  ),// Couleur de fond du bouton
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const jeans_de_stock()),
                  );
                  // Logique pour la navigation vers la page des Jeans
                },
                child: Text('Jeans', style: TextStyle(fontSize: 50)),
              ),
              SizedBox(height: 35),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ajoutautres()),
          );
          // Logique pour l'ajout d'un nouvel élément
        },
        tooltip: 'Ajouter',
        child: Icon(Icons.add), // Icône "+" pour le bouton
        backgroundColor: Colors.pinkAccent, // Couleur de fond du bouton
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: femmes_de_stock(),
  ));
}
