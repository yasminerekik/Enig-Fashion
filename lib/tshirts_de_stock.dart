import 'package:flutter/material.dart';
import 'modif_de_stock.dart';
import 'package:stock/articlestock4.dart';
import 'package:stock/articlestock5.dart';
import 'package:stock/articlestock6.dart';

class tshirts_de_stock extends StatefulWidget {
  const tshirts_de_stock({Key? key}) : super(key: key);

  @override
  State<tshirts_de_stock> createState() => _TshirtState();
}

class _TshirtState extends State<tshirts_de_stock> {
  List<String> allImages = [
    'assets/tshirtsrouge.png',
    'assets/bluetshit.png',
    'assets/marrontshirt.png',
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

                  return GestureDetector(
                    onTap: () {
                      if (imagePath == 'assets/tshirtsrouge.png') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => articlestock4(),
                          ),
                        );
                      } else if (imagePath == 'assets/bluetshit.png') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => articlestock5(),
                          ),
                        );
                      } else if (imagePath == 'assets/marrontshirt.png') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => articlestock6(),
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
                            fit: BoxFit.cover,
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
    home: tshirts_de_stock(),
  ));
}
