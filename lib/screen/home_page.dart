import 'package:flutter/material.dart';
import 'package:proyecto_ubicua/Functions.dart';

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
        backgroundColor: bg_App,
        appBar: appBarBuscador(context),
        drawer: drawerApp(context));
  }
}
