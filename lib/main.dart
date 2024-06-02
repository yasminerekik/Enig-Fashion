import 'dart:async';
import 'package:flutter/material.dart';
import 'package:stock/home.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Utilisation de Future.delayed pour ajouter un délai avant de naviguer vers la nouvelle interface
    Future.delayed(Duration(seconds: 3), () {
      // Naviguer vers la nouvelle interface (par exemple, 'home')
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                'assets/logo2.png', // Remplacez 'logo.png' par le chemin de votre logo
                fit: BoxFit.cover, // Utiliser BoxFit.cover pour couvrir tout l'espace disponible
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(), // Ajoutez un indicateur de chargement si nécessaire
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock_Buy',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}