import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:proyecto_ubicua/constants.dart';
import 'package:proyecto_ubicua/Functions.dart';

String mensaje = "";

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: bgBlueGradient,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
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
                              SizedBox(
                                height: 5,
                              ), //COMMIT 01/01/21
                              Text("Crea una cuenta",
                                  style: TextStyle(
                                      color: Colors.blue[900], fontSize: 30)),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    textFormF(
                                        "Correo",
                                        "Introduce tu Correo Electronico",
                                        TextInputType.emailAddress),
                                    textFormF(
                                        "Alias",
                                        "Introduce tu nombre de usuario",
                                        TextInputType.name),
                                    textFormPass("Contraseña",
                                        "Introduce tu contraseña"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 40),
                        SizedBox(
                          height: 60,
                          width: MediaQuery.of(context).size.width - 100,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(180.0)),
                            color: bgText,
                            onPressed: () {
                              _register();
                            },
                            child: Text("Registrate",
                                style: TextStyle(
                                    color: Colors.blue[900], fontSize: 30)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(mensaje +
                              "TERMINOS Y CONDICIONES Y TODAS ESAS RIDICULECES QUE NADIE LEE"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

UserCredential userCredential;

void _register() async {
  try {
    userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
      mensaje = 'The password provided is too weak.';
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
      mensaje = 'The account already exists for that email.';
    } else {
      mensaje = 'Cambio de pagina.';
    }
  } catch (e) {
    print(e);
    mensaje = "aa" + e;
  }

  if (userCredential != null) {
    mensaje = "ENTRO";
  } else {
    mensaje = "Algo paso";
  }
}
