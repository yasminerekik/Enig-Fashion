import 'package:flutter/material.dart';
import 'modif_de_stock.dart';

class articlestock3 extends StatefulWidget {
  const articlestock3({super.key});

  @override
  State<articlestock3> createState() => _articleState();
}

class _articleState extends State<articlestock3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
        ),
        body: Stack(
            children: [
              Container(
                // Utilisation du widget Container pour définir la couleur de fond
                  color: Color(0xFFDAB5F3),
                  // autogroup2k68gip (R3dhBS8RGhvUE2bS6Z2k68)
                  padding:  EdgeInsets.fromLTRB(30, 32, 34, 27),
                  width:  double.infinity,
                  child:
                  Column(
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      children:  [
                        Container(
                          // slendergirlgreatmoodishavingfu (20:134)
                          width: 500,
                          height: 370,
                          child: Image.asset(
                            'assets/roberougee1.png',
                            fit: BoxFit.cover, // Hauteur souhaitée de l'image
                          ),
                        ),
                        Container(
                          // autogroupcprsoYY (R3dgQnk9AkAaCjvZGucpRS)
                          margin:  EdgeInsets.fromLTRB(0, 0, 0, 26),
                          width:  double.infinity,
                          child:
                          Row(
                            crossAxisAlignment:  CrossAxisAlignment.center,
                            children:  [
                              Container(
                                // stripedpinkdresswPr (20:117)
                                margin:  EdgeInsets.fromLTRB(0, 0, 37, 0),
                                child:
                                Text(
                                  'Red Dress',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 20 , // Modifier cette valeur pour changer la taille du texte
                                    fontWeight: FontWeight.w600,
                                    height: 2.5 ,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // id129900pyS (20:116)
                                margin:  EdgeInsets.fromLTRB(50, 0, 0, 0),
                                child:
                                Text(
                                  'Id. 1,236.00\nPrice: 175 TND',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 20 , // Modifier cette valeur pour changer la taille du texte
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 ,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // tailleLwn (20:136)
                          margin:  EdgeInsets.fromLTRB(5, 0, 0, 10),
                          child:
                          Text(
                            'Size',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 20 , // Modifier cette valeur pour changer la taille du texte
                              fontWeight: FontWeight.w600,
                              height: 1.2125 ,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupllegTmW (R3dgYChTRavL1V46SLLLeg)
                          margin:  EdgeInsets.fromLTRB(3, 0, 0, 23),
                          height:  42,
                          child:
                          Row(
                            crossAxisAlignment:  CrossAxisAlignment.center,
                            children:  [
                              Container(
                                // group1oKa (20:146)
                                margin:  EdgeInsets.fromLTRB(0, 0, 11, 0),
                                width:  42,
                                height:  double.infinity,
                                decoration:  BoxDecoration (
                                  color:  Color(0xffffffff),
                                  borderRadius:  BorderRadius.circular(21),
                                ),
                                child:
                                Center(
                                  child:
                                  Text(
                                    'XS',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 20 , // Modifier cette valeur pour changer la taille du texte
                                      fontWeight: FontWeight.w600,
                                      height: 1.2125 ,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // group5HEk (20:150)
                                margin:  EdgeInsets.fromLTRB(0, 0, 13, 0),
                                width:  42,
                                height:  double.infinity,
                                decoration:  BoxDecoration (
                                  color:  Color(0xffffffff),
                                  borderRadius:  BorderRadius.circular(21),
                                ),
                                child:
                                Center(
                                  child:
                                  Text(
                                    'S',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 20 , // Modifier cette valeur pour changer la taille du texte
                                      fontWeight: FontWeight.w600,
                                      height: 1.2125 ,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // group3ydN (20:148)
                                margin:  EdgeInsets.fromLTRB(0, 0, 14, 0),
                                width:  42,
                                height:  double.infinity,
                                decoration:  BoxDecoration (
                                  color:  Color(0xffffffff),
                                  borderRadius:  BorderRadius.circular(21),
                                ),
                                child:
                                Center(
                                  child:
                                  Text(
                                    'M',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 20 , // Modifier cette valeur pour changer la taille du texte
                                      fontWeight: FontWeight.w600,
                                      height: 1.2125 ,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // group4Ua8 (20:149)
                                width:  42,
                                height:  double.infinity,
                                decoration:  BoxDecoration (
                                  color:  Color(0xffffffff),
                                  borderRadius:  BorderRadius.circular(21),
                                ),
                                child:
                                Center(
                                  child:
                                  Text(
                                    'L',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 20 , // Modifier cette valeur pour changer la taille du texte
                                      fontWeight: FontWeight.w600,
                                      height: 1.2125 ,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // couleurCFE (20:152)
                          margin:  EdgeInsets.fromLTRB(3, 0, 0, 6),
                          child:
                          Text(
                            'Color',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 20 , // Modifier cette valeur pour changer la taille du texte
                              fontWeight: FontWeight.w600,
                              height: 1.2125 ,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupnyskvwv (R3dgon5qVPxyxgpc55nySk)
                            margin:  EdgeInsets.fromLTRB(0, 0, 158, 0),
                            width:  double.infinity,
                            height:  50,
                            child:
                            Row(
                                crossAxisAlignment:  CrossAxisAlignment.center,
                                children:  [
                                  Container(
                                    margin:  EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    width:  42,
                                    height:  42,
                                    decoration:  BoxDecoration (
                                      borderRadius:  BorderRadius.circular(21),
                                      color:  Colors.pinkAccent,
                                    ),
                                  ),
                                  Container(
                                    // autogroup4tpcpGc (R3dgwGsM2hLRMqtyA44tpc)
                                      padding:  EdgeInsets.fromLTRB(9, 3, 0, 5),
                                      height:  double.infinity,
                                      child:
                                      Row(
                                          crossAxisAlignment:  CrossAxisAlignment.center,
                                          children:  [
                                            Container(
                                              // ellipse9kvx (20:213)
                                              margin:  EdgeInsets.fromLTRB(0, 0, 10, 0),
                                              width:  42,
                                              height:  42,
                                              decoration:  BoxDecoration (
                                                borderRadius:  BorderRadius.circular(21),
                                                color:  Color(0xff97cbe2),
                                              ),
                                            ),
                                            Container(
                                              // ellipse10JBn (20:215)
                                              width:  42,
                                              height:  42,
                                              decoration:  BoxDecoration (
                                                borderRadius:  BorderRadius.circular(21),
                                                color:  Color(0xffd67f4d),
                                              ),
                                            ),
                                          ]
                                      )
                                  )
                                ]
                            )
                        )
                      ]
                  )
              ),
              Positioned(
                bottom: 30, // Ajustez la position verticale comme souhaité
                left: 100,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const modif_de_stock()),
                          );
                          // Action à effectuer lors du clic sur le bouton Modifier
                          // Ajoutez ici la logique pour la fonctionnalité de modification
                        },
                        child: Text('EDIT'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple, // Couleur de fond du bouton Supprimer
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Action à effectuer lors du clic sur le bouton Supprimer
                          // Ajoutez ici la logique pour la fonctionnalité de suppression
                        },
                        child: Text('DELETE'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple, // Couleur de fond du bouton Supprimer
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]
        )
    );
  }
}
void main() {
  runApp(MaterialApp(
    home: articlestock3(),
  ));
}