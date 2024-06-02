import 'package:flutter/material.dart';
import 'formulaire.dart';

class panier extends StatefulWidget {
  const panier({Key? key}) : super(key: key);

  @override
  State<panier> createState() => _PanierState();
}

class _PanierState extends State<panier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
        title: const Text(
          'CART',
          style: TextStyle(fontSize: 28),
        ),
      ),
      body: Container(
    // autogrouprjhjiUC (R3dkVkmdWGThDJFGhurJHJ)
    padding:  EdgeInsets.fromLTRB(22, 50, 23, 17),
    width:  double.infinity,
    child:
    Column(
    crossAxisAlignment:  CrossAxisAlignment.start,
    children:  [
    Container(
    // autogroupwdlg93i (R3diLpMoqwdjE2KswjwdLG)
    margin:  EdgeInsets.fromLTRB(25, 0, 1, 1),
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
    Image.asset('assets/robebleue.png',
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
    margin:  EdgeInsets.fromLTRB(0, 0, 0, 5),
    child:
    Text(
    'Striped red Dress',
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
    margin:  EdgeInsets.fromLTRB(0, 0, 0, 7),
    child:
    Text(
    'Id.  1,499.00\nPrice: 120 TND',
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
    color:  Color(0xff920b24),
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
      IconButton(
        onPressed: () {
          // Action à effectuer lors du clic sur l'icône/bouton
          // Ajoutez votre logique ici
        },
        icon: Icon(
          Icons.delete, // Utilisation de l'icône de corbeille prédéfinie
          size: 20, // Taille de l'icône
          color: Colors.grey, // Couleur de l'icône
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
        padding:  EdgeInsets.fromLTRB(22, 50, 23, 17),
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
                      Image.asset('assets/roberose.png',
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
                          margin:  EdgeInsets.fromLTRB(0, 7, 17, 7),
                          width:  156,
                          child:
                          Column(
                            crossAxisAlignment:  CrossAxisAlignment.start,
                            children:  [
                              Container(
                                // stripedgreendress3oJ (20:206)
                                margin:  EdgeInsets.fromLTRB(0, 0, 0, 5),
                                child:
                                Text(
                                  'Striped pink Dress',
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
                                margin:  EdgeInsets.fromLTRB(0, 0, 0, 7),
                                child:
                                Text(
                                  'Id.  2,499.00\nPrice: 170 TND',
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
                                      width:  30,
                                      height:  33,
                                      decoration:  BoxDecoration (
                                        borderRadius:  BorderRadius.circular(16.5),
                                        color:  Color(0xFFFA3E6A),
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
                        IconButton(
                          onPressed: () {
                            // Action à effectuer lors du clic sur l'icône/bouton
                            // Ajoutez votre logique ici
                          },
                          icon: Icon(
                            Icons.delete, // Utilisation de l'icône de corbeille prédéfinie
                            size: 20, // Taille de l'icône
                            color: Colors.grey, // Couleur de l'icône
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
        Container(
          width: double.infinity,
          // autogroupxdbahik (R3dkHvn1D76kxg1wceXdBA)
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // totalshippinggrandtotalTxp (21:226)
                margin: EdgeInsets.fromLTRB(0, 16, 69, 0), // Mise à jour des valeurs
                constraints: BoxConstraints(
                  maxWidth: 135,
                ),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      height: 1.2125,
                      color: Color(0xff000000),
                    ),
                    children: [
                      TextSpan(
                        text: 'Total \nShipping \n',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          height: 1.2125,
                          color: Color(0xff454242),
                        ),
                      ),
                      TextSpan(
                        text: 'Grand Total ',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // id279800id000id279800PEC (21:228)
                margin: EdgeInsets.fromLTRB(0, 0, 0, 16), // Mise à jour des valeurs
                constraints: BoxConstraints(
                  maxWidth: 126,
                ),
                child: RichText(
                  textAlign: TextAlign.right,
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      height: 1.2125,
                      color: Color(0xff000000),
                    ),
                    children: [
                      TextSpan(
                        text: '290 TND\n0.00 TND\n',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          height: 1.2125,
                          color: Color(0xff454141),
                        ),
                      ),
                      TextSpan(
                        text: '290 TND',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const formulaire()),
              );
              // Ajoutez le code à exécuter lorsque le bouton "Valider" est pressé
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.purple, // Couleur du bouton
            ),
            child: Text('VALIDATE', style: TextStyle(fontSize: 25)),
          ),
        ],
      ),
      )
        ]
    )
      )
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: panier(),
  ));
}
