import 'package:flutter/material.dart';

class formulaire extends StatefulWidget {
  const formulaire({Key? key}) : super(key: key);

  @override
  State<formulaire> createState() => _FormulaireState();
}

class _FormulaireState extends State<formulaire> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _adresseController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  final TextEditingController _dateLivraisonController = TextEditingController();

  bool _isButtonDisabled = true;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Traitez les données du formulaire ici
      Map<String, String> _formData = {
        'Nom': _nomController.text,
        'Adresse': _adresseController.text,
        'Contact': _contactController.text,
        'Date de livraison': _dateLivraisonController.text,
      };

      // Exemple d'impression des données du formulaire
      print('Données du formulaire : $_formData');
    }
  }

  @override
  void initState() {
    super.initState();
    _nomController.addListener(_validate);
    _adresseController.addListener(_validate);
    _contactController.addListener(_validate);
    _dateLivraisonController.addListener(_validate);
  }

  void _validate() {
    setState(() {
      _isButtonDisabled = _nomController.text.isEmpty ||
          _adresseController.text.isEmpty ||
          _contactController.text.isEmpty ||
          _dateLivraisonController.text.isEmpty;
    });
  }

  @override
  void dispose() {
    _nomController.dispose();
    _adresseController.dispose();
    _contactController.dispose();
    _dateLivraisonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/commandepanier.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Complete the form :',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                  _buildTitle('Name'),
                  _buildTextFormField('Name', _nomController),
                  _buildTitle('Address'),
                  _buildTextFormField('Address', _adresseController),
                  _buildTitle('Contact'),
                  _buildTextFormField('Contact', _contactController),
                  _buildTitle('Delivery date'),
                  _buildTextFormField('Delivery date', _dateLivraisonController),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Vérification des champs d'email et de mot de passe
          String nom = _nomController.text.trim();
          String adresse = _adresseController.text.trim();
          String contact = _contactController.text.trim();
          String dateLivraison = _dateLivraisonController.text.trim();

          if (nom.isNotEmpty && adresse.isNotEmpty && contact.isNotEmpty && dateLivraison.isNotEmpty) {
            // Actions à effectuer lors de la connexion réussie
            // Vous pouvez ajouter votre logique de connexion ici
          } else {
            // Affichage d'un message si les champs sont vides
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Error'),
                  content: Text('Please fill in all fields.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('OK'),
                    ),
                  ],
                );
              },
            );
          }
        },
        tooltip: 'Envoyer',
        child: Icon(Icons.send),
        backgroundColor: Colors.blueAccent,
        disabledElevation: 0,
      ),
    );
  }

  Widget _buildTextFormField(String labelText, TextEditingController controller) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Colors.blue[50], // Couleur de remplissage bleue plus claire
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none, // Pas de bordure
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'This field can not be empty';
        }
        return null;
      },
    );
  }


  Widget _buildTitle(String title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: formulaire(),
    ),
  );
}
