import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:proyecto_ubicua/Functions.dart';
import 'package:proyecto_ubicua/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_svg/svg.dart';
import 'package:proyecto_ubicua/screen/home/components/body.dart';

// //CON ESTO SE PUEDE CAMBIAR DE PAGINA
// void homePress(BuildContext context) {
//   Navigator.of(context).push(
//     MaterialPageRoute(builder: (_) => HomeScreen()),
//   );
// }

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarBuscador(context),
      drawer: drawerApp(context),
      body: Body(),
      // body: ListView(
      //   children: [
      //     Text("Recuperando informacion"),
      //     Text("Descripcion"),
      //     GetInformation('Gala', 'Descripcion'),
      //     Text("Escuela"),
      //     GetInformation('Gala', 'Escuela'),
      //     Text("Nombre"),
      //     GetInformation('Gala', 'Nombre'),
      //     Text("Precio"),
      //     GetInformation('Gala', 'Precio'),
      //     RaisedButton(
      //       onPressed: () => homePress(context),
      //       child: Text("Prueba"),
      //     ),
      //   ],
      // ),
    );
  }
}
