import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_ubicua/screen/login_page.dart';

Color bg_App = Color(0xFF0E4382);
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
UserCredential user;

Widget drawerApp(BuildContext context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          //decoration: BoxDecoration(color: colorBar),
          height: 150,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.supervised_user_circle_outlined, size: 70),
                  Column(
                    children: [
                      Container(
                        width: 180,
                        child: Text(userCredential.user.email),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          "Bienvenido",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        ListTile(
          title: Text('Inicio'),
          leading: Icon(Icons.home_outlined),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Buscar'),
          leading: Icon(Icons.search),
          // onTap: () =>
          //     firstPagePress(context), //para ir a la primera pagina
        ),
        ListTile(
          title: Text('Mi cuenta'),
          leading: Icon(Icons.account_circle_outlined),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Categorias'),
          leading: Icon(Icons.view_list_rounded),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        Divider(
          color: Colors.grey,
          indent: 20,
        ),
        ListTile(
          title: Text('Ayuda'),
          leading: Icon(Icons.help_outline),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        Divider(
          color: Colors.grey,
          indent: 20,
        ),
        ListTile(
          title: Text('Acerca de Uniformes VELVEL'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}

Widget appBarBuscador(BuildContext context) {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.white),
    elevation: 0,
    //backgroundColor: colorBar,
    title: ClipRRect(
      borderRadius: BorderRadius.circular(100.0),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          filled: true,
          hintText: "Buscar en el catalogo",
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.search, color: Colors.black),
        ),
      ),
    ),
    actions: [],
  );
}

Widget textFormF(String lab, String hint, TextInputType tit) {
  return TextFormField(
    controller: emailController,
    keyboardType: tit,
    decoration: InputDecoration(
      labelText: lab,
      hintText: hint,
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
    validator: (String value) {
      if (value.isEmpty) {
        return "Por favor ingresa tu correo";
      } else {
        return value;
      }
    },
  );
}

Widget textFormPass(String lab, String hint) {
  return TextFormField(
    controller: passwordController,
    validator: (String value) {
      if (value.isEmpty) {
        return "Por favor ingresa tu Contraseña";
      } else {
        return value;
      }
    },
    decoration: InputDecoration(
      labelText: lab,
      hintText: hint,
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );
}
