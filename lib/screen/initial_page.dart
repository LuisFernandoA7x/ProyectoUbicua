import 'package:flutter/material.dart';
import 'package:proyecto_ubicua/constants.dart';
import 'package:proyecto_ubicua/screen/login_page.dart';

void initPress(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => LoginPage()),
  );
}

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: bgBlueGradient,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(
              "images/logo.png",
              height: 290,
              width: 270,
            ),
            SizedBox(
              height: 30,
            ),
            Text("CATALOGO",
                style: TextStyle(fontSize: 50, color: Colors.white)),
            Text("2021", style: TextStyle(fontSize: 45, color: Colors.white)),
            Text("Catalogo uniformes escolares.",
                style: TextStyle(fontSize: 20, color: Colors.white)),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 80,
              width: MediaQuery.of(context).size.width - 80,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(180.0)),
                color: bgText,
                onPressed: () => initPress(context),
                child: Text("Iniciar",
                    style: TextStyle(color: Colors.blue[900], fontSize: 40)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
