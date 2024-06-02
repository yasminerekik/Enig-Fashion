import 'package:flutter/material.dart';
import 'package:stock/ajouter_de_stock.dart';

class ajoutautres extends StatefulWidget {
  const ajoutautres({Key? key}) : super(key: key);

  @override
  _AjoutAutresState createState() => _AjoutAutresState();
}

class _AjoutAutresState extends State<ajoutautres> {
  String ajoutAutresValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple, // Correction de la couleur
      ),
      body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/femmecatalogue.jpg'), // Remplacez par le chemin de votre image
    fit: BoxFit.cover,
    ),
    ),
    child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                onTap: () {
                  // Action à exécuter lorsqu'on tape sur le TextField
                  // Vous pouvez ouvrir une boîte de dialogue ou effectuer une autre action selon vos besoins
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.pink[100], // Couleur rose clair
                  hintText: 'ADD MORE',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ajouter_de_stock()),
                  );
                  // Action à exécuter lorsque le bouton est pressé
                  // (À compléter avec la logique nécessaire)
                },
                child: Text('VALIDATE', style: TextStyle(fontSize: 25)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  // Couleur violette
                ),
              ),
              SizedBox(height: 30),
              // Ajout de l'image de couverture
            ],
          ),
        ),
      ),
      )
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ajoutautres(),
  ));
}
