import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:proyecto_ubicua/Functions.dart';
import 'package:proyecto_ubicua/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore _firestore = FirebaseFirestore.instance;
CollectionReference uniformes;

//CON ESTO SE PUEDE CAMBIAR DE PAGINA
// void marketPress(BuildContext context) {
//   Navigator.of(context).push(
//     MaterialPageRoute(builder: (_) => MarketPage()),
//   );
// }
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarBuscador(context),
      drawer: drawerApp(context),
      body: ListView(
        children: [
          Text("Recuperando informacion"),
          Text("Descripcion"),
          GetInformation('Gala', 'Descripcion'),
          Text("Escuela"),
          GetInformation('Gala', 'Escuela'),
          Text("Nombre"),
          GetInformation('Gala', 'Nombre'),
          Text("Precio"),
          GetInformation('Gala', 'Precio'),
        ],
      ),
    );
  }
}

class GetInformation extends StatelessWidget {
  final String documentId;
  final String tipoDato;

  GetInformation(this.documentId, this.tipoDato);

  @override
  Widget build(BuildContext context) {
    CollectionReference db = FirebaseFirestore.instance.collection('uniformes');

    return FutureBuilder<DocumentSnapshot>(
      future: db.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          return Text("${data[tipoDato]}");
        }

        return Text("loading");
      },
    );
  }
}
