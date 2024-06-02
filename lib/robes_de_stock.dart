import 'package:flutter/material.dart';
import 'package:stock/modif_de_stock.dart';
import 'package:stock/promoclient1.dart';
import 'package:stock/articlestock.dart';
import 'package:stock/articlestock1.dart.';
import 'package:stock/articlestock2.dart.';
import 'package:stock/articlestock3.dart.';

class robes_de_stock extends StatefulWidget {
  const robes_de_stock({Key? key}) : super(key: key);

  @override
  State<robes_de_stock> createState() => _RobesState();
}

class _RobesState extends State<robes_de_stock> {
  List<String> allImages = [
    'assets/robebleue.png',
    'assets/robeviolet.png',
    'assets/robenoire.webp',
    'assets/robeverte.webp',
    'assets/robeblanchee.webp',
    'assets/robeorange.webp',
    'assets/roberose.png',
    'assets/roberougee1.png',
    // Ajoutez ici d'autres images All
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(29, 43, 28, 28.77),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  // Mettez ici votre logique pour la recherche
                  print('Action de recherche');
                  // Par exemple, vous pouvez ajouter ici la logique pour démarrer la recherche
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(1, 0, 2, 22),
                  padding: EdgeInsets.fromLTRB(16, 9, 186, 7),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff989797),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                        width: 24,
                        height: 24,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
                          child: Text(
                            'Search',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 1.2125,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your search...',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                            ),
                          ),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Inter',
                          ),
                          onTap: () {
                            // Mettez ici votre logique de clic sur le champ de texte
                            print('Clic sur le champ de texte');
                          },
                          onChanged: (value) {
                            // Mettez ici votre logique pour gérer le texte saisi
                            print('Texte saisi : $value');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Affichage de toutes les images sans filtrage
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: allImages.length,
                itemBuilder: (BuildContext context, int index) {
                  String imagePath = allImages[index];
                  bool isPromo = imagePath == 'assets/robenoire.webp' ||
                      imagePath == 'assets/robeblanchee.webp' ||
                      imagePath == 'assets/robeorange.webp' ||
                      imagePath == 'assets/robeverte.webp'; // Ajoutez d'autres chemins d'images en promotion si nécessaire

                  return GestureDetector(
                    onTap: () {
                      if (imagePath == 'assets/roberose.png') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => articlestock(),
                          ),
                        );
                      } else if (imagePath == 'assets/robebleue.png') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => articlestock1(),
                          ),
                        );
                      } else if (imagePath == 'assets/roberougee1.png') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => articlestock3(),
                          ),
                        );
                      } else if (imagePath == 'assets/robeviolet.png') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => articlestock2(),
                          ),
                        );
                      } else if (isPromo) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => promoclient1(),
                          ),
                        );
                      }
                    },
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            imagePath,
                            fit: BoxFit.cover, // Adapter la taille de l'image au bouton
                          ),
                        ),
                        if (isPromo)
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Icon(
                              Icons.local_offer, // Icône pour indiquer la promotion
                              color: Colors.redAccent,
                              size: 40,
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const modif_de_stock()),
          );
          // Logique pour l'ajout d'un nouvel élément
        },
        tooltip: 'Ajouter',
        child: Icon(Icons.add), // Icône "+" pour le bouton
        backgroundColor: Colors.purple, // Couleur de fond du bouton
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: robes_de_stock(),
  ));
}
