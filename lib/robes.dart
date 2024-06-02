import 'package:flutter/material.dart';
import 'package:stock/promoclient.dart';
import 'package:stock/article.dart.';
import 'package:stock/article1.dart.';
import 'package:stock/article2.dart.';
import 'package:stock/article3.dart.';

class robes extends StatefulWidget {
  const robes({Key? key}) : super(key: key);

  @override
  State<robes> createState() => _RobesState();
}
class _RobesState extends State<robes> {
  List<String> trendingNowImages = [
    'assets/roberougee1.png',
    // Ajoutez ici d'autres images Trending Now
  ];

  List<String> newImages = [
    'assets/roberose.png',
    // Ajoutez ici d'autres nouvelles images
  ];

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
                  bool isPromo = imagePath == 'assets/robenoire.webp' || imagePath == 'assets/robeblanchee.webp' || imagePath == 'assets/robeorange.webp' || imagePath == 'assets/robeverte.webp' ; // Ajoutez d'autres chemins d'images en promotion si nécessaire

                  return GestureDetector(
                    onTap: () {
                      if (imagePath == 'assets/roberose.png') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => article(),
                          ),
                        );
                      } else if (imagePath == 'assets/robebleue.png') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => article1(),
                          ),
                        );
                      }
                      else if (imagePath == 'assets/roberougee1.png') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => article2(),
                          ),
                        );
                      }
                      else if (imagePath == 'assets/robeviolet.png') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => article3(),
                          ),
                        );
                      }
                      else if (isPromo) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => promoclient(),
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
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              article(), // Remplacez "Article" par le nom de votre interface pour cette image spécifique
        ),
      );
    }

  }
// Ajoutez d'autres conditions pour d'autres images si nécessaire


  void main() {
  runApp(MaterialApp(
    home: robes(),
  ));
}}
