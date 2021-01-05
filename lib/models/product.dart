import 'package:flutter/material.dart';
import 'package:proyecto_ubicua/Functions.dart';

class Product {
  final Widget title, description;
  final String image;
  final int id;
  final Widget price, size;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

//Widget title = GetInformation('Uniforme1', 'title');

List<Product> products = [
  Product(
      id: 1,
      //id: GetInformation('Uniforme1', 'id'),
      //title: "uniforme",
      title: GetInformation('Uniforme1', 'title'),
      price: GetInformation('Uniforme1', 'price'),
      size: GetInformation('Uniforme1', 'size'),
      description: GetInformation('Uniforme1', 'description'),
      image: "images/images/uniforme_1.png",
      //image: GetInformation('Uniforme1', 'image'),
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      //id: GetInformation('Uniforme1', 'id'),
      //title: "Belt Bag",
      // title: Text("Belt gag"),
      title: GetInformation('Uniforme2', 'title'),
      price: GetInformation('Uniforme2', 'price'),
      size: GetInformation('Uniforme2', 'size'),
      description: GetInformation('Uniforme2', 'description'),
      image: "images/images/uniforme_2.png",
      //image: GetInformation('Uniforme2', 'image'),
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      // id: GetInformation('Uniforme1', 'id'),
      //title: Text("Belt gag"),
      title: GetInformation('Uniforme3', 'title'),
      price: GetInformation('Uniforme3', 'price'),
      size: GetInformation('Uniforme3', 'size'),
      description: GetInformation('Uniforme3', 'description'),
      image: "images/images/uniforme_3.png",
      //image: GetInformation('Uniforme3', 'image'),
      color: Color(0xFF989493)),
  Product(
      id: 4,
      // id: GetInformation('Uniforme1', 'id'),
      //title: Text("Belt gag"),
      title: GetInformation('Uniforme4', 'title'),
      price: GetInformation('Uniforme4', 'price'),
      size: GetInformation('Uniforme4', 'size'),
      description: GetInformation('Uniforme4', 'description'),
      image: "images/images/uniforme_4.png",
      //image: GetInformation('Uniforme4', 'image'),
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      // id: GetInformation('Uniforme1', 'id'),
      //title: Text("Belt gag"),
      title: GetInformation('Uniforme5', 'title'),
      price: GetInformation('Uniforme5', 'price'),
      size: GetInformation('Uniforme5', 'size'),
      description: GetInformation('Uniforme5', 'description'),
      image: "images/images/uniforme_5.png",
      //image: GetInformation('Uniforme5', 'image'),
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    // id: GetInformation('Uniforme1', 'id'),
    //title: Text("Belt gag"),
    title: GetInformation('Uniforme6', 'title'),
    price: GetInformation('Uniforme6', 'price'),
    size: GetInformation('Uniforme6', 'size'),
    description: GetInformation('Uniforme6', 'description'),
    image: "images/images/uniforme_6.png",
    //image: GetInformation('Uniforme6', 'image'),
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
