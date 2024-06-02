import 'package:flutter/material.dart';

class statistiques extends StatefulWidget {
  const statistiques({Key? key}) : super(key: key);

  @override
  _StatistiquesState createState() => _StatistiquesState();
}

class _StatistiquesState extends State<statistiques> {
  int likeCount = 70;
  int dislikeCount = 30;

  void incrementLike() {
    setState(() {
      likeCount++;
    });
  }

  void incrementDislike() {
    setState(() {
      dislikeCount++;
    });
  }

  Widget buildStatContainer(String label, int count) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.deepPurple, // Couleur de fond de la case
        borderRadius: BorderRadius.circular(20), // Bord arrondi
      ),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            count.toString(),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'STATISTICS',
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/stat.png'), // Chemin vers votre image
            fit: BoxFit.cover, // Ajustez la façon dont l'image est affichée
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildStatContainer('LIKES', likeCount),
                  buildStatContainer('DISLIKES', dislikeCount),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: statistiques(),
  ));
}
