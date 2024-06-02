import 'package:flutter/material.dart';
import 'package:stock/article7.dart.';
import 'package:stock/article8.dart.';
import 'package:stock/article9.dart.';

class jeans extends StatefulWidget {
  const jeans({Key? key}) : super(key: key);

  @override
  State<jeans> createState() => _JeansState();
}
class _JeansState extends State<jeans> {
  List<String> trendingNowImages = [
    'assets/reddjean.png',
    // Ajoutez ici d'autres images Trending Now
  ];

  List<String> newImages = [
    'assets/brownjean.png',
    // Ajoutez ici d'autres nouvelles images
  ];

  List<String> allImages = [
    'assets/reddjean.png',
    'assets/brownjean.png',
    'assets/bleuejean.png',

    // Ajoutez ici d'autres images All
  ];

  List<String> displayedImages = [];

  @override
  void initState() {
    super.initState();
    // Afficher par défaut toutes les images
    displayedImages = allImages;
  }

  void filterImages(String category) {
    setState(() {
      switch (category) {
        case 'Trending Now':
          displayedImages = trendingNowImages;
          break;
        case 'New':
          displayedImages = newImages;
          break;
        case 'All':
          displayedImages = allImages;
          break;
        default:
          displayedImages = allImages;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MATCH YOUR STYLE',
          style: TextStyle(fontSize: 28),
        ),
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
              Row(
                children: [
                  buildCategoryButton('Trending Now'),
                  buildCategoryButton('New'),
                  buildCategoryButton('All'),
                ],
              ),

              // Affichage des images filtrées
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: displayedImages.length,
                itemBuilder: (BuildContext context, int index) {
                  String imagePath = displayedImages[index];
                  // Ajoutez d'autres chemins d'images en promotion si nécessaire

                  return GestureDetector(
                    onTap: () {
                      if (imagePath == 'assets/reddjean.png') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => article7(),
                          ),
                        );
                      }
                      else if (imagePath == 'assets/brownjean.png') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => article8(),
                          ),
                        );
                      }
                      else if (imagePath == 'assets/bleuejean.png') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => article9(),
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

                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryButton(String category) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          filterImages(category);
        },
        child: Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              category,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Fonction pour naviguer vers l'interface spécifique de l'image cliquée
  void navigateToImageScreen(BuildContext context, String imagePath) {
    if (imagePath == 'assets/roberougee1.png') {
      // Ajoutez la navigation vers l'interface spécifique pour cette image
    } else if (imagePath == 'assets/roberose.png') {
    }

  }
// Ajoutez d'autres conditions pour d'autres images si nécessaire


  void main() {
    runApp(MaterialApp(
      home: jeans(),
    ));
  }}
