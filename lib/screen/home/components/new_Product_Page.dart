import 'package:flutter/material.dart';
import 'package:proyecto_ubicua/Functions.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

TextEditingController titleController = TextEditingController();
TextEditingController descripcionController = TextEditingController();
TextEditingController sizeController = TextEditingController();
TextEditingController priceController = TextEditingController();
String mensaje = "";

class NewProduct extends StatelessWidget {
  const NewProduct({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: appBarBuscador(context),
        drawer: drawerApp(context),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Text('Nombre del producto\n'),
              TextFormField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: 'Nuevo Producto',
                  hintText: 'escribe el nombre del producto',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Por favor ingresa tu correo";
                  } else {
                    return value;
                  }
                },
              ),
              Text("Descripcion\n"),
              TextFormField(
                controller: descripcionController,
                decoration: InputDecoration(
                  labelText: 'Descripcion',
                  hintText: 'Descripcion del producto',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Por favor ingresa tu correo";
                  } else {
                    return value;
                  }
                },
              ),
              Text("Tallas de uniforme\n"),
              TextFormField(
                controller: sizeController,
                decoration: InputDecoration(
                  labelText: 'Tallas',
                  hintText: '8,10,12',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Por favor ingresa tu correo";
                  } else {
                    return value;
                  }
                },
              ),
              Text("Precio del uniforme\n"),
              TextFormField(
                controller: priceController,
                decoration: InputDecoration(
                  labelText: 'Precio',
                  hintText: '123.50',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Por favor ingresa tu correo";
                  } else {
                    return value;
                  }
                },
              ),
              SizedBox(height: 50),
              RaisedButton(
                child: Text("Agregar uniforme"),
                onPressed: () => newUniform(
                    descripcionController.text,
                    priceController.text,
                    sizeController.text,
                    titleController.text),
              ),
              Text(mensaje),
            ],
          ),
        ));
  }
}

void newUniform(String description, String price, String size, String title) {
  // Create a CollectionReference called users that references the firestore collection
  CollectionReference uniforme =
      FirebaseFirestore.instance.collection('UniformesEscolares');
  uniforme
      .add({
        'description': description, // John Doe
        'price': price, // Stokes and Sons
        'size': size, // 42
        'title': title // 42
      })
      .then((value) => print("Uniforme Agregao"))
      .catchError((error) => print("Failed to add Uniforme: $error"));
  mensaje = "Se agrego el nuevo uniforme";
  descripcionController.text = "";
  priceController.text = "";
  sizeController.text = "";
  titleController.text = "";
}
