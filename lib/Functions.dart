import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_ubicua/screen/login_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:proyecto_ubicua/models/Product.dart';
import 'package:proyecto_ubicua/constants.dart';
import 'package:proyecto_ubicua/screen/home/components/new_Product_Page.dart';

Color bg_App = Color(0xFF0E4382);
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
UserCredential user;
Product prodFinal;

void newProductPress(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => NewProduct()),
  );
}

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
          title: Text('Nuevo Producto'),
          leading: Icon(Icons.add_circle_outline),
          onTap: () => newProductPress(context),
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

class GetInformation extends StatelessWidget {
  final String documentId;
  final String tipoDato, llamado;

  GetInformation(this.documentId, this.tipoDato, this.llamado);

  @override
  Widget build(BuildContext context) {
    CollectionReference db =
        FirebaseFirestore.instance.collection('UniformesEscolares');

    return FutureBuilder<DocumentSnapshot>(
      future: db.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();

          switch (llamado) {
            case 'price':
              return Text("\n \$ ${data[tipoDato]}",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold));
              break;
            case 'priceItemCard':
              return Text("\$ ${data[tipoDato]}",
                  style: TextStyle(fontWeight: FontWeight.bold));
              break;

            case 'title':
              return Text("${data[tipoDato]}",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold));
              break;
            case 'titleItem':
              return Text("${data[tipoDato]}",
                  style: TextStyle(color: kTextLightColor));
              break;

            case 'size':
              return Text(
                "${data[tipoDato]}",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold),
              );
              break;
            case 'descriptionHeigth':
              return Text("${data[tipoDato]}", style: TextStyle(height: 1.5));
              break;
          }
        }
        return Text("loading");
      },
    );
  }
}

class GetInformation2 extends StatelessWidget {
  final String documentId2;
  final String img;
  final int idd;
  GetInformation2(this.documentId2, this.idd, this.img);

  @override
  Widget build(BuildContext context) {
    CollectionReference db =
        FirebaseFirestore.instance.collection('UniformesEscolares');

    return FutureBuilder<DocumentSnapshot>(
      future: db.doc(documentId2).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          Product p = new Product();
          // p.id = idd;
          // p.color = Color(0xFF3D82AE);
          // p.image = img;
          // p.title = "${data['title']}";
          // p.price = "${data['price']}";
          // p.description = "${data['description']}";
          // p.size = "${data['size']}";
          // prodFinal = p;
          //products.add(p);
          //return Text("${data['title']}");
          //return Text(products.length.toString());

          //return data[tipoDato];

          // return Text(
          //   "${data[tipoDato2]}",
          //   style: Theme.of(context)
          //       .textTheme
          //       .headline5
          //       .copyWith(fontWeight: FontWeight.bold),
          // );
        }
        return Text("loading");
      },
    );
  }
}
