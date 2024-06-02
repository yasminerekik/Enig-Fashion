import 'package:flutter/material.dart';
import 'promotions.dart';
class promoclient1 extends StatefulWidget {
  const promoclient1({super.key});

  @override
  State<promoclient1> createState() => _promoclientState();
}

class _promoclientState extends State<promoclient1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/promo.png'), // Chemin vers votre image
                    fit: BoxFit.cover, // Ajustez la façon dont l'image est affichée
                  ),
                ),
                child: Stack(
                    children: [
                      Container(
                        // autogrouprjhjiUC (R3dkVkmdWGThDJFGhurJHJ)
                          padding:  EdgeInsets.fromLTRB(22, 50, 23, 17),
                          width:  double.infinity,
                          child:
                          Column(
                              crossAxisAlignment:  CrossAxisAlignment.start,
                              children:  [
                                Container(
                                  // autogroupwdlg93i (R3diLpMoqwdjE2KswjwdLG)
                                  margin:  EdgeInsets.fromLTRB(2, 0, 1, 1),
                                  width:  double.infinity,
                                  height:  160,
                                  child:
                                  Row(
                                    crossAxisAlignment:  CrossAxisAlignment.center,
                                    children:  [
                                      Container(
                                        // womangreendresshatyellowbackgr (20:202)
                                        width:  100,
                                        height:  160,
                                        child:
                                        ClipRRect(
                                          borderRadius:  BorderRadius.circular(20),
                                          child:
                                          Image.asset('assets/robenoire.webp',
                                            fit:  BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // autogroup5dd6n6g (R3diyxxaQc2Br9vPgR5dd6)
                                        padding:  EdgeInsets.fromLTRB(2, 7, 0, 0),
                                        height:  double.infinity,
                                        child:
                                        Row(
                                          crossAxisAlignment:  CrossAxisAlignment.start,
                                          children:  [
                                            Container(
                                              // autogrouprhvcvCt (R3diZUfNyh9VQn1UGSrHvc)
                                              margin:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                                              width:  156,
                                              child:
                                              Column(
                                                crossAxisAlignment:  CrossAxisAlignment.start,
                                                children:  [
                                                  Container(
                                                    // stripedgreendress3oJ (20:206)
                                                    margin:  EdgeInsets.fromLTRB(5, 0, 0, 5),
                                                    child:
                                                    Text(
                                                      'Black Dress',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        fontFamily: 'Inter', // Nom de la police Inter
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // id1499008pk (20:208)
                                                    margin:  EdgeInsets.fromLTRB(5, 0, 0, 7),
                                                    child:
                                                    Text(
                                                      'Id.  1,400.00\nPrice: 150 TND\n',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        fontFamily: 'Inter', // Nom de la police Inter
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(10, 0, 0, 7),
                                                    child: DecoratedBox(
                                                      decoration: BoxDecoration(
                                                        color: Colors.redAccent, // Couleur de la bande de promotion
                                                        borderRadius: BorderRadius.circular(8.0), // Bord arrondi de la bande
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(8.0), // Marge intérieure pour le texte
                                                        child: Text(
                                                          '10%',
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                            fontFamily: 'Inter', // Nom de la police Inter
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                            height: 1,
                                                            color: Colors.white, // Couleur du texte à l'intérieur de la bande
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // autogroupf1bi4Cc (R3dih97H5ukHzkyVCWF1bi)
                                                    margin:  EdgeInsets.fromLTRB(0, 0, 75, 0),
                                                    width:  double.infinity,
                                                    height:  33,
                                                    child:
                                                    Row(
                                                      crossAxisAlignment:  CrossAxisAlignment.center,
                                                      children:  [
                                                        Container(
                                                          // ellipse10bCY (20:216)
                                                          margin:  EdgeInsets.fromLTRB(0, 0, 15, 0),
                                                          width:  33,
                                                          height:  33,
                                                          decoration:  BoxDecoration (
                                                            borderRadius:  BorderRadius.circular(16.5),
                                                            color:  Colors.black,
                                                          ),
                                                        ),
                                                        Container(
                                                          // autogroupkmfahWU (R3dinDo9PuGwBwdtWhKMfa)
                                                          width:  33,
                                                          height:  double.infinity,
                                                          decoration:  BoxDecoration (
                                                            color:  Color(0xffeceaea),
                                                            borderRadius:  BorderRadius.circular(16.5),
                                                          ),
                                                          child:
                                                          Center(
                                                            child:
                                                            Text(
                                                              'S',
                                                              textAlign: TextAlign.center,
                                                              style: TextStyle(
                                                                fontFamily: 'Inter', // Nom de la police Inter
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.w600,
                                                                height: 0.5,
                                                                color: Colors.black,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) => promotions(),
                                                  ),
                                                );
                                                // Action à effectuer lors du clic sur le bouton
                                                // Ajoutez votre logique ici
                                              },
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(8.0), // Bord arrondi du bouton
                                                ),
                                                padding: EdgeInsets.all(10), // Rembourrage du bouton
                                                primary: Colors.deepPurple, // Couleur de fond du bouton
                                              ),
                                              child: Icon(
                                                Icons.edit, // Utilisation de l'icône de corbeille prédéfinie
                                                size: 30, // Taille de l'icône
                                                color: Colors.white, // Couleur de l'icône à l'intérieur du bouton
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupwdlg93i (R3diLpMoqwdjE2KswjwdLG)
                                  margin:  EdgeInsets.fromLTRB(2, 0, 1, 1),
                                  width:  double.infinity,
                                  height:  260,
                                  child:
                                  Row(
                                    crossAxisAlignment:  CrossAxisAlignment.center,
                                    children:  [
                                      Container(
                                        // womangreendresshatyellowbackgr (20:202)
                                        width:  100,
                                        height:  160,
                                        child:
                                        ClipRRect(
                                          borderRadius:  BorderRadius.circular(20),
                                          child:
                                          Image.asset('assets/robeverte.webp',
                                            fit:  BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // autogroup5dd6n6g (R3diyxxaQc2Br9vPgR5dd6)
                                        padding:  EdgeInsets.fromLTRB(2, 7, 0, 0),
                                        height:  double.infinity,
                                        child:
                                        Row(
                                          crossAxisAlignment:  CrossAxisAlignment.start,
                                          children:  [
                                            Container(
                                              // autogrouprhvcvCt (R3diZUfNyh9VQn1UGSrHvc)
                                              margin:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                                              width:  156,
                                              child:
                                              Column(
                                                crossAxisAlignment:  CrossAxisAlignment.start,
                                                children:  [
                                                  Container(
                                                    // stripedgreendress3oJ (20:206)
                                                    margin:  EdgeInsets.fromLTRB(5, 0, 0, 5),
                                                    child:
                                                    Text(
                                                      'Green Dress',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        fontFamily: 'Inter', // Nom de la police Inter
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w600,
                                                        height: 5,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // id1499008pk (20:208)
                                                    margin:  EdgeInsets.fromLTRB(5, 0, 0, 7),
                                                    child:
                                                    Text(
                                                      'Id.  1,422.00\nPrice: 200 TND\n',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        fontFamily: 'Inter', // Nom de la police Inter
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(10, 0, 0, 7),
                                                    child: DecoratedBox(
                                                      decoration: BoxDecoration(
                                                        color: Colors.redAccent, // Couleur de la bande de promotion
                                                        borderRadius: BorderRadius.circular(8.0), // Bord arrondi de la bande
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(8.0), // Marge intérieure pour le texte
                                                        child: Text(
                                                          '20%',
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                            fontFamily: 'Inter', // Nom de la police Inter
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                            height: 1,
                                                            color: Colors.white, // Couleur du texte à l'intérieur de la bande
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // autogroupf1bi4Cc (R3dih97H5ukHzkyVCWF1bi)
                                                    margin:  EdgeInsets.fromLTRB(0, 0, 75, 0),
                                                    width:  double.infinity,
                                                    height:  33,
                                                    child:
                                                    Row(
                                                      crossAxisAlignment:  CrossAxisAlignment.center,
                                                      children:  [
                                                        Container(
                                                          // ellipse10bCY (20:216)
                                                          margin:  EdgeInsets.fromLTRB(0, 0, 15, 0),
                                                          width:  33,
                                                          height:  33,
                                                          decoration:  BoxDecoration (
                                                            borderRadius:  BorderRadius.circular(16.5),
                                                            color:  Color(0xFF077E4C),
                                                          ),
                                                        ),
                                                        Container(
                                                          // autogroupkmfahWU (R3dinDo9PuGwBwdtWhKMfa)
                                                          width:  33,
                                                          height:  double.infinity,
                                                          decoration:  BoxDecoration (
                                                            color:  Color(0xffeceaea),
                                                            borderRadius:  BorderRadius.circular(16.5),
                                                          ),
                                                          child:
                                                          Center(
                                                            child:
                                                            Text(
                                                              'M',
                                                              textAlign: TextAlign.center,
                                                              style: TextStyle(
                                                                fontFamily: 'Inter', // Nom de la police Inter
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.w600,
                                                                height: 0.5,
                                                                color: Colors.black,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) => promotions(),
                                                  ),
                                                );
                                                // Action à effectuer lors du clic sur le bouton
                                                // Ajoutez votre logique ici
                                              },
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(8.0), // Bord arrondi du bouton
                                                ),
                                                padding: EdgeInsets.all(10), // Rembourrage du bouton
                                                primary: Colors.deepPurple, // Couleur de fond du bouton
                                              ),
                                              child: Icon(
                                                Icons.edit, // Utilisation de l'icône de corbeille prédéfinie
                                                size: 30, // Taille de l'icône
                                                color: Colors.white, // Couleur de l'icône à l'intérieur du bouton
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupwdlg93i (R3diLpMoqwdjE2KswjwdLG)
                                  margin:  EdgeInsets.fromLTRB(2, 0, 1, 1),
                                  width:  double.infinity,
                                  height:  160,
                                  child:
                                  Row(
                                    crossAxisAlignment:  CrossAxisAlignment.center,
                                    children:  [
                                      Container(
                                        // womangreendresshatyellowbackgr (20:202)
                                        width:  100,
                                        height:  160,
                                        child:
                                        ClipRRect(
                                          borderRadius:  BorderRadius.circular(20),
                                          child:
                                          Image.asset('assets/robeorange.webp',
                                            fit:  BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // autogroup5dd6n6g (R3diyxxaQc2Br9vPgR5dd6)
                                        padding:  EdgeInsets.fromLTRB(2, 7, 0, 0),
                                        height:  double.infinity,
                                        child:
                                        Row(
                                          crossAxisAlignment:  CrossAxisAlignment.start,
                                          children:  [
                                            Container(
                                              // autogrouprhvcvCt (R3diZUfNyh9VQn1UGSrHvc)
                                              margin:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                                              width:  156,
                                              child:
                                              Column(
                                                crossAxisAlignment:  CrossAxisAlignment.start,
                                                children:  [
                                                  Container(
                                                    // stripedgreendress3oJ (20:206)
                                                    margin:  EdgeInsets.fromLTRB(5, 0, 0, 5),
                                                    child:
                                                    Text(
                                                      'Orange Dress',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        fontFamily: 'Inter', // Nom de la police Inter
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // id1499008pk (20:208)
                                                    margin:  EdgeInsets.fromLTRB(5, 0, 0, 7),
                                                    child:
                                                    Text(
                                                      'Id.  1,111.00\nPrice: 300 TND\n',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        fontFamily: 'Inter', // Nom de la police Inter
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(10, 0, 0, 7),
                                                    child: DecoratedBox(
                                                      decoration: BoxDecoration(
                                                        color: Colors.redAccent, // Couleur de la bande de promotion
                                                        borderRadius: BorderRadius.circular(8.0), // Bord arrondi de la bande
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(8.0), // Marge intérieure pour le texte
                                                        child: Text(
                                                          '30%',
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                            fontFamily: 'Inter', // Nom de la police Inter
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                            height: 1,
                                                            color: Colors.white, // Couleur du texte à l'intérieur de la bande
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // autogroupf1bi4Cc (R3dih97H5ukHzkyVCWF1bi)
                                                    margin:  EdgeInsets.fromLTRB(0, 0, 75, 0),
                                                    width:  double.infinity,
                                                    height:  33,
                                                    child:
                                                    Row(
                                                      crossAxisAlignment:  CrossAxisAlignment.center,
                                                      children:  [
                                                        Container(
                                                          // ellipse10bCY (20:216)
                                                          margin:  EdgeInsets.fromLTRB(0, 0, 15, 0),
                                                          width:  33,
                                                          height:  33,
                                                          decoration:  BoxDecoration (
                                                            borderRadius:  BorderRadius.circular(16.5),
                                                            color:  Colors.deepOrangeAccent,
                                                          ),
                                                        ),
                                                        Container(
                                                          // autogroupkmfahWU (R3dinDo9PuGwBwdtWhKMfa)
                                                          width:  33,
                                                          height:  double.infinity,
                                                          decoration:  BoxDecoration (
                                                            color:  Color(0xffeceaea),
                                                            borderRadius:  BorderRadius.circular(16.5),
                                                          ),
                                                          child:
                                                          Center(
                                                            child:
                                                            Text(
                                                              'S',
                                                              textAlign: TextAlign.center,
                                                              style: TextStyle(
                                                                fontFamily: 'Inter', // Nom de la police Inter
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.w600,
                                                                height: 0.5,
                                                                color: Colors.black,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) => promotions(),
                                                  ),
                                                );
                                                // Action à effectuer lors du clic sur le bouton
                                                // Ajoutez votre logique ici
                                              },
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(8.0), // Bord arrondi du bouton
                                                ),
                                                padding: EdgeInsets.all(10), // Rembourrage du bouton
                                                primary: Colors.deepPurple, // Couleur de fond du bouton
                                              ),
                                              child: Icon(
                                                Icons.edit, // Utilisation de l'icône de corbeille prédéfinie
                                                size: 30, // Taille de l'icône
                                                color: Colors.white, // Couleur de l'icône à l'intérieur du bouton
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogrouprjhjiUC (R3dkVkmdWGThDJFGhurJHJ)
                                    padding:  EdgeInsets.fromLTRB(2, 50, 23, 17),
                                    width:  double.infinity,
                                    child:
                                    Column(
                                        crossAxisAlignment:  CrossAxisAlignment.start,
                                        children:  [
                                          Container(
                                            // autogroupwdlg93i (R3diLpMoqwdjE2KswjwdLG)
                                            margin:  EdgeInsets.fromLTRB(0, 0, 0, 19),
                                            width:  double.infinity,
                                            height:  160,
                                            child:
                                            Row(
                                              crossAxisAlignment:  CrossAxisAlignment.center,
                                              children:  [
                                                Container(
                                                  // womangreendresshatyellowbackgr (20:202)
                                                  width:  100,
                                                  height:  250,
                                                  child:
                                                  ClipRRect(
                                                    borderRadius:  BorderRadius.circular(20),
                                                    child:
                                                    Image.asset('assets/robeblanchee.webp',
                                                      fit:  BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // autogroup5dd6n6g (R3diyxxaQc2Br9vPgR5dd6)
                                                  padding:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                  height:  double.infinity,
                                                  child:
                                                  Row(
                                                    crossAxisAlignment:  CrossAxisAlignment.start,
                                                    children:  [
                                                      Container(
                                                        // autogrouprhvcvCt (R3diZUfNyh9VQn1UGSrHvc)
                                                        margin:  EdgeInsets.fromLTRB(0, 7, 12, 7),
                                                        width:  156,
                                                        child:
                                                        Column(
                                                          crossAxisAlignment:  CrossAxisAlignment.start,
                                                          children:  [
                                                            Container(
                                                              // stripedgreendress3oJ (20:206)
                                                              margin:  EdgeInsets.fromLTRB(5, 0, 0, 5),
                                                              child:
                                                              Text(
                                                                'White Dress',
                                                                textAlign: TextAlign.center,
                                                                style: TextStyle(
                                                                  fontFamily: 'Inter', // Nom de la police Inter
                                                                  fontSize: 14,
                                                                  fontWeight: FontWeight.w600,
                                                                  height: 1,
                                                                  color: Colors.black,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              // id1499008pk (20:208)
                                                              margin:  EdgeInsets.fromLTRB(5, 0, 0, 7),
                                                              child:
                                                              Text(
                                                                'Id.  3,499.00\nPrice: 120 TND\n',
                                                                textAlign: TextAlign.center,
                                                                style: TextStyle(
                                                                  fontFamily: 'Inter', // Nom de la police Inter
                                                                  fontSize: 14,
                                                                  fontWeight: FontWeight.bold,
                                                                  height: 1,
                                                                  color: Colors.black,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets.fromLTRB(10, 0, 0, 7),
                                                              child: DecoratedBox(
                                                                decoration: BoxDecoration(
                                                                  color: Colors.redAccent, // Couleur de la bande de promotion
                                                                  borderRadius: BorderRadius.circular(8.0), // Bord arrondi de la bande
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsets.all(8.0), // Marge intérieure pour le texte
                                                                  child: Text(
                                                                    '20%',
                                                                    textAlign: TextAlign.center,
                                                                    style: TextStyle(
                                                                      fontFamily: 'Inter', // Nom de la police Inter
                                                                      fontSize: 20,
                                                                      fontWeight: FontWeight.bold,
                                                                      height: 1,
                                                                      color: Colors.white, // Couleur du texte à l'intérieur de la bande
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),

                                                            Container(
                                                              // autogroupf1bi4Cc (R3dih97H5ukHzkyVCWF1bi)
                                                              margin:  EdgeInsets.fromLTRB(0, 0, 20, 0),
                                                              width:  double.infinity,
                                                              height:  33,
                                                              child:
                                                              Row(
                                                                crossAxisAlignment:  CrossAxisAlignment.center,
                                                                children:  [
                                                                  Container(
                                                                    // ellipse10bCY (20:216)
                                                                    margin:  EdgeInsets.fromLTRB(0, 0, 12, 0),
                                                                    width:  30,
                                                                    height:  33,
                                                                    decoration:  BoxDecoration (
                                                                      borderRadius:  BorderRadius.circular(16.5),
                                                                      color:  Colors.white,
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    // autogroupkmfahWU (R3dinDo9PuGwBwdtWhKMfa)
                                                                    width:  30,
                                                                    height:  double.infinity,
                                                                    decoration:  BoxDecoration (
                                                                      color:  Color(0xffeceaea),
                                                                      borderRadius:  BorderRadius.circular(16.5),
                                                                    ),
                                                                    child:
                                                                    Center(
                                                                      child:
                                                                      Text(
                                                                        'M',
                                                                        textAlign: TextAlign.center,
                                                                        style: TextStyle(
                                                                          fontFamily: 'Inter', // Nom de la police Inter
                                                                          fontSize: 14,
                                                                          fontWeight: FontWeight.w600,
                                                                          height: 0.5,
                                                                          color: Colors.black,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) => promotions(),
                                                            ),
                                                          );
                                                          // Action à effectuer lors du clic sur le bouton
                                                          // Ajoutez votre logique ici
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(8.0), // Bord arrondi du bouton
                                                          ),
                                                          padding: EdgeInsets.all(10), // Rembourrage du bouton
                                                          primary: Colors.deepPurple, // Couleur de fond du bouton
                                                        ),
                                                        child: Icon(
                                                          Icons.edit, // Utilisation de l'icône de corbeille prédéfinie
                                                          size: 30, // Taille de l'icône
                                                          color: Colors.white, // Couleur de l'icône à l'intérieur du bouton
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
            SizedBox(height: 15),
// Ajout du bouton "Add" au centre de l'interface avec une couleur violette
            Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => promotions(),
                      ),
                    );
                    // Mettez ici votre logique pour le bouton "Add"
                    print('Add button pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                    textStyle: TextStyle(fontSize: 35),// Couleur violette
                  ),
                  child: Text('Add'),
                ),
            )
                                        ]
                                    )
                                )
                              ]
                          )
                      )
                    ]
                )

            )

        )

    );
  }
}

void main() {
  runApp(MaterialApp(
    home: promoclient1(),
  ));
}