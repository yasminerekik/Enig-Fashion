import 'package:flutter/material.dart';

class modif_de_stock extends StatefulWidget {
  const modif_de_stock({Key? key}) : super(key: key);

  @override
  State<modif_de_stock> createState() => _AjouterDeStockState();
}

class _AjouterDeStockState extends State<modif_de_stock> {
  String _selectedColor = ''; // Couleur sélectionnée
  String _selectedSize = ''; // Taille sélectionnée
  TextEditingController _priceController = TextEditingController(); // Contrôleur pour le champ de prix

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Interface pour ajouter la photo du vêtement
            Container(
              height: 200, // Hauteur de l'espace pour la photo
              color: Colors.grey[300],
              child: Center(
                child: Text(
                  'ADD PHOTO',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            SizedBox(height: 20.0),
            // Interface pour modifier le prix du vêtement
            TextFormField(
              controller: _priceController,
              decoration: InputDecoration(labelText: 'PRICE'),
              keyboardType: TextInputType.number,
              onChanged: (value) {},
            ),
            SizedBox(height: 20.0),
            // Interface pour choisir des couleurs sous forme de cercles
            Text('PICK COLORS :'),
            Wrap(
              spacing: 8.0,
              children: <Widget>[
                _buildColorCircle(Color(0xFFF18051),),
                _buildColorCircle(Color(0xFFBB59CE),),
                _buildColorCircle(Color(0xFFFA3E6A),),
                // Ajoutez d'autres cercles de couleur pour permettre à l'utilisateur de sélectionner différentes couleurs
              ],
            ),
            SizedBox(height: 20.0),
            // Interface pour choisir des tailles sous forme de cercles
            Text('PICK SIZES :'),
            Wrap(
              spacing: 8.0,
              children: <Widget>[
                _buildSizeCircle('S'),
                _buildSizeCircle('M'),
                _buildSizeCircle('L'),
                // Ajoutez d'autres cercles de tailles pour permettre à l'utilisateur de sélectionner différentes tailles
              ],
            ),
            SizedBox(height: 20.0),
            // Bouton pour valider les modifications du vêtement
            ElevatedButton(
              onPressed: () {
                // Action à effectuer lors de la validation
                // Vous pouvez récupérer les valeurs choisies (couleur, taille, prix) ici
                String selectedColor = _selectedColor;
                String selectedSize = _selectedSize;
                String price = _priceController.text;

                // Effectuer les actions nécessaires avec les données récupérées
              },
              child: Text('VALIDATE'),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple, // Couleur de fond du bouton Valider
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildColorCircle(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedColor = color.toString();
        });
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: _selectedColor == color.toString()
              ? Border.all(color: Colors.black, width: 2.0)
              : null,
        ),
      ),
    );
  }

  Widget _buildSizeCircle(String size) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedSize = size;
        });
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: _selectedSize == size ? Colors.black : Colors.transparent,
          ),
        ),
        child: Center(
          child: Text(
            size,
            style: TextStyle(
              fontSize: 18,
              color: _selectedSize == size ? Colors.black : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: modif_de_stock(),
  ));
}

