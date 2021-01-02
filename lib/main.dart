import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_ubicua/screen/initial_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Catalogo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0E4382),
        appBarTheme: AppBarTheme(
          color: Color(0xFF0E4382),
          elevation: 0,
        ),
      ),
      color: Colors.blue[100],
      home: InitialPage(),
    );
  }
}
