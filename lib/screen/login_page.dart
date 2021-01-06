import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_ubicua/constants.dart';
import 'package:proyecto_ubicua/Functions.dart';
import 'package:proyecto_ubicua/screen/signUp_page.dart';
import 'package:proyecto_ubicua/screen/home_page.dart';

String mensaje = "";

void signUpPress(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => SignUpPage()),
  );
}

void homePress(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => HomePage()),
  );
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: bgBlueGradient,
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 95),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 200,
                  decoration: BoxDecoration(
                    gradient: bgBlueGradientLOGIN,
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: borderRadCardLogin,
                        width: MediaQuery.of(context).size.width - 100,
                        height: MediaQuery.of(context).size.height - 370,
                        child: Column(
                          children: [
                            Image.asset(
                              "images/logo.png",
                              height: 150,
                              width: 100,
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  textFormF(
                                      "Alias",
                                      "Introduce tu nombre de usuario",
                                      TextInputType.name),
                                  textFormPass(
                                      "Contraseña", "Introduce tu contraseña"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        height: 60,
                        width: MediaQuery.of(context).size.width - 100,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(180.0)),
                          color: bgText,
                          onPressed: () {
                            iniciaSesion(context);
                          },
                          child: Text("Iniciar sesión",
                              style: TextStyle(
                                  color: Colors.blue[900], fontSize: 30)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("¿No tienes una cuenta?"),
                      ElevatedButton(
                        onPressed: () => signUpPress(context),
                        child: Text("Registrate"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

UserCredential userCredential;
void iniciaSesion(BuildContext context) async {
  try {
    userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);

    homePress(context);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
      mensaje = "No se encontro el email";
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
      mensaje = "Contraseña incorrecta";
    }
  }
}
