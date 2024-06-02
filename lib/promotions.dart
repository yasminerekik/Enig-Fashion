import 'package:flutter/material.dart';

class promotions extends StatefulWidget {
  const promotions({Key? key}) : super(key: key);

  @override
  _PromotionsState createState() => _PromotionsState();
}

class _PromotionsState extends State<promotions> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController idController = TextEditingController();
  TextEditingController percentageController = TextEditingController();
  TextEditingController delayController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/promo.png'), // Chemin vers votre image
                fit: BoxFit.cover, // Ajustez la façon dont l'image est affichée
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20), // Espace supplémentaire
                  TextFormField(
                    controller: idController,
                    decoration: InputDecoration(
                      labelText: 'ID',
                      filled: true,
                      fillColor: Colors.purple[50], // Couleur de remplissage
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Ajustez les marges internes
                      border: OutlineInputBorder( // Ajouter une bordure autour du champ de texte
                        borderRadius: BorderRadius.circular(15.0), // Modifier la courbure de la bordure
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an ID';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10), // Espace supplémentaire
                  TextFormField(
                    controller: percentageController,
                    decoration: InputDecoration(
                      labelText: 'Percentage',
                      filled: true,
                      fillColor: Colors.purple[50], // Couleur de remplissage
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Ajustez les marges internes
                      border: OutlineInputBorder( // Ajouter une bordure autour du champ de texte
                        borderRadius: BorderRadius.circular(15.0), // Modifier la courbure de la bordure
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a percentage';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10), // Espace supplémentaire
                  TextFormField(
                    controller: delayController,
                    decoration: InputDecoration(
                      labelText: 'Percentage delay',
                      filled: true,
                      fillColor: Colors.purple[50], // Couleur de remplissage
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Ajustez les marges internes
                      border: OutlineInputBorder( // Ajouter une bordure autour du champ de texte
                        borderRadius: BorderRadius.circular(15.0), // Modifier la courbure de la bordure
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please add a percentage delay';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20), // Espace supplémentaire
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Logique pour ajouter la promotion ici
                            // Utilisez les valeurs des contrôleurs (idController.text, percentageController.text, delayController.text)
                          }
                        },
                        child: Text('ADD'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Logique pour supprimer la promotion ici
                        },
                        child: Text('DELETE'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: promotions(),
  ));
}
