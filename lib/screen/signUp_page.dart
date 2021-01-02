import 'package:flutter/material.dart';
import 'package:proyecto_ubicua/constants.dart';
import 'package:proyecto_ubicua/Functions.dart';

void _registrarte(){

}
class SignUpPage extends StatelessWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
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
                              textFormPass(
                                  "Contraseña", "Introduce tu contraseña"),
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
                      onPressed: () {},
                      child: Text("Registrate",
                          style:
                              TextStyle(color: Colors.blue[900], fontSize: 30)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                        "TERMINOS Y CONDICIONES Y TODAS ESAS RIDICULECES QUE NADIE LEE"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
