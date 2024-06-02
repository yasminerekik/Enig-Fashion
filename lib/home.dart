import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'promoclient.dart';
import 'connexion.dart';
import 'genre.dart';
import 'panier.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 236, 241),
      appBar: AppBar(
        title: Text(
          "ENIG FASHION",
          style: TextStyle(fontSize: 28), // Ajustez la taille de la police selon vos préférences
        ),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('        Select language'),
                    content: Column(
                      children: [
                        // Ajoutez ici vos options de sélection de langue
                        ElevatedButton(
                          onPressed: () {
                            // Mettez ici le code pour changer la langue (par exemple, utiliser un gestionnaire de l10n)
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple, // Définir la couleur violette
                          ),
                          child: Text(
                            'English',
                            style: TextStyle(fontSize: 20), // Définir la taille du texte à 20
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Mettez ici le code pour changer la langue (par exemple, utiliser un gestionnaire de l10n)
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple, // Définir la couleur violette
                          ),
                          child: Text(
                            'Frensh',
                            style: TextStyle(fontSize: 20), // Définir la taille du texte à 20
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Mettez ici le code pour changer la langue (par exemple, utiliser un gestionnaire de l10n)
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple, // Définir la couleur violette
                          ),
                          child: Text(
                            'Spanish',
                            style: TextStyle(fontSize: 20), // Définir la taille du texte à 20
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Mettez ici le code pour changer la langue (par exemple, utiliser un gestionnaire de l10n)
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple, // Définir la couleur violette
                          ),
                          child: Text(
                            'German',
                            style: TextStyle(fontSize: 20), // Définir la taille du texte à 20
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text(
                'ADMINISTRATOR AREA',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
            ), // DrawerHeader
            ListTile(
              title: Text(
                'ACCOUNT',
                style: TextStyle(fontSize: 25),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const connexion()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/interface.png'), // Chemin vers votre image
            fit: BoxFit.cover, // Ajustez la façon dont l'image est affichée
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(height: 348), // Ajout d'un espace vide pour déplacer légèrement le bouton
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const genre()),
                      );
                      // Ajoutez le code à exécuter lorsque le bouton est pressé
                      // Par exemple, vous pouvez naviguer vers la page du catalogue.
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple, // Couleur de fond bleue
                      padding: EdgeInsets.all(40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Text('CATALOG', style: TextStyle(fontSize: 35)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 30,
              left: 20,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const promoclient()),
                  );
                  // Ajoutez le code à exécuter lorsque le bouton "promo" est pressé
                },
                child: Icon(Icons.local_offer),
                backgroundColor: Colors.black,
              ),
            ),
            Positioned(
              bottom: 30,
              left: 20,
              child: Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      // Ajoutez le code à exécuter lorsque le bouton "like" est pressé
                    },
                    child: Icon(Icons.thumb_up),
                    backgroundColor: Colors.blue,
                    heroTag: "like",
                  ),
                  SizedBox(width: 20),
                  FloatingActionButton(
                    onPressed: () {
                      // Ajoutez le code à exécuter lorsque le bouton "dislike" est pressé
                    },
                    child: Icon(Icons.thumb_down),
                    backgroundColor: Colors.pink,
                    heroTag: "dislike",
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 30,
              right: 20,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const panier()),
                  );
                  // Ajoutez le code à exécuter lorsque le bouton du panier est pressé
                },
                child: Icon(Icons.shopping_cart),
                backgroundColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
