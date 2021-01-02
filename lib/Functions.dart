import 'dart:ui';

import 'package:flutter/material.dart';

Color bg_App = Color(0xFF0E4382);
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

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
                        child: Text("Hola USUARIO"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          "Nivel 1 - Mercado Puntos    >",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(180)),
                  color: Colors.blue.withOpacity(.9),
                ),
                child: FlatButton(
                    minWidth: 300,
                    onPressed: () {},
                    //onPressed: () => firstPagePress(context),
                    child: Text(
                      "Primeras pantallas",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
              )
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
          title: Text('Mis Compras'),
          leading: Icon(Icons.shopping_bag_outlined),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
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
          title: Text('Vender'),
          leading: Icon(Icons.shopping_bag),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Historial'),
          leading: Icon(Icons.access_time),
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
          title: Text('Categorias'),
          leading: Icon(Icons.view_list_rounded),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Supermercado'),
          leading: Icon(Icons.shopping_cart_sharp),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Tiendas oficiales'),
          leading: Icon(Icons.storefront),
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
          title: Text('Acerca de Mercado Libre'),
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
    iconTheme: IconThemeData(color: Colors.black),
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
    actions: [
      IconButton(
          icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
          onPressed: () {})
      //onPressed: () => marketPress(context))
    ],
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
