import 'package:flutter/material.dart';
import 'package:proyecto_ubicua/Functions.dart';

class Product {
  Widget title, descriptionHeigth, titleItem, priceItemCard;
  String image;
  int id;
  Widget price, size;
  Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.titleItem,
    this.price,
    this.priceItemCard,
    //this.description,
    this.descriptionHeigth,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: GetInformation('Uniforme1', 'title', 'title'),
      titleItem: GetInformation('Uniforme1', 'title', 'titleItem'),
      price: GetInformation('Uniforme1', 'price', 'price'),
      priceItemCard: GetInformation('Uniforme1', 'price', 'priceItemCard'),
      //description: GetInformation('Uniforme1', 'description'),
      size: GetInformation('Uniforme1', 'size', 'size'),
      descriptionHeigth:
          GetInformation('Uniforme1', 'description', 'descriptionHeigth'),
      image: "images/images/uniforme_1.png",
      color: Color(0xFF245bb4)),
  Product(
      id: 2,
      title: GetInformation('Uniforme2', 'title', 'title'),
      titleItem: GetInformation('Uniforme2', 'title', 'titleItem'),
      price: GetInformation('Uniforme2', 'price', 'price'),
      priceItemCard: GetInformation('Uniforme2', 'price', 'priceItemCard'),
      //description: GetInformation('Uniforme1', 'description'),
      size: GetInformation('Uniforme2', 'size', 'size'),
      descriptionHeigth:
          GetInformation('Uniforme2', 'description', 'descriptionHeigth'),
      image: "images/images/uniforme_2.png",
      color: Color(0xFF266de2)),
  Product(
      id: 3,
      title: GetInformation('Uniforme3', 'title', 'title'),
      titleItem: GetInformation('Uniforme3', 'title', 'titleItem'),
      price: GetInformation('Uniforme3', 'price', 'price'),
      priceItemCard: GetInformation('Uniforme3', 'price', 'priceItemCard'),
      //description: GetInformation('Uniforme1', 'description'),
      size: GetInformation('Uniforme3', 'size', 'size'),
      descriptionHeigth:
          GetInformation('Uniforme3', 'description', 'descriptionHeigth'),
      image: "images/images/uniforme_3.png",
      color: Color(0xFF2060c8)),
  Product(
      id: 4,
      title: GetInformation('Uniforme4', 'title', 'title'),
      titleItem: GetInformation('Uniforme4', 'title', 'titleItem'),
      price: GetInformation('Uniforme4', 'price', 'price'),
      priceItemCard: GetInformation('Uniforme4', 'price', 'priceItemCard'),
      //description: GetInformation('Uniforme1', 'description'),
      size: GetInformation('Uniforme4', 'size', 'size'),
      descriptionHeigth:
          GetInformation('Uniforme4', 'description', 'descriptionHeigth'),
      image: "images/images/uniforme_4.png",
      color: Color(0xFF1e56b0)),
  Product(
      id: 5,
      title: GetInformation('Uniforme5', 'title', 'title'),
      titleItem: GetInformation('Uniforme5', 'title', 'titleItem'),
      price: GetInformation('Uniforme5', 'price', 'price'),
      priceItemCard: GetInformation('Uniforme5', 'price', 'priceItemCard'),
      //description: GetInformation('Uniforme1', 'description'),
      size: GetInformation('Uniforme5', 'size', 'size'),
      descriptionHeigth:
          GetInformation('Uniforme5', 'description', 'descriptionHeigth'),
      image: "images/images/uniforme_5.png",
      color: Color(0xFF1b4c9b)),
  Product(
      id: 6,
      title: GetInformation('Uniforme6', 'title', 'title'),
      titleItem: GetInformation('Uniforme6', 'title', 'titleItem'),
      price: GetInformation('Uniforme6', 'price', 'price'),
      priceItemCard: GetInformation('Uniforme6', 'price', 'priceItemCard'),
      //description: GetInformation('Uniforme1', 'description'),
      size: GetInformation('Uniforme6', 'size', 'size'),
      descriptionHeigth:
          GetInformation('Uniforme6', 'description', 'descriptionHeigth'),
      image: "images/images/uniforme_6.png",
      color: Color(0xFF174083)),
];
