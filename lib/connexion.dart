import 'package:flutter/material.dart';
import 'package:stock/parametres.dart';

class connexion extends StatefulWidget {
  const connexion({Key? key}) : super(key: key);

  @override
  State<connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<connexion> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LOGIN',
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/admin.jpg',
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Email',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 15,
                fontWeight: FontWeight.w400,
                height: 1.1725,
                color: Color(0xff890493),
              ),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Type here your mail address',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff890493)),
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Color(0xfffcffff),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Password',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 15,
                fontWeight: FontWeight.w400,
                height: 1.1725,
                color: Color(0xff890493),
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Your Password',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff890493)),
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Color(0xfffcffff),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Vérification des champs d'email et de mot de passe
                String email = _emailController.text.trim();
                String password = _passwordController.text.trim();

                // Vérification des identifiants
                if (email == 'yasminerahma@gmail.com' && password == '52110672') {
                  // Actions à effectuer lors de la connexion réussie
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => parametres()),
                  );
                } else {
                  // Affichage d'un message si les identifiants sont incorrects
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Error'),
                        content: Text('Incorrect email or password.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  height: 1.1725,
                  color: Color(0xff046193),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: connexion(),
    ),
  );
}
