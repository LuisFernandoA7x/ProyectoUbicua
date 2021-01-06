import 'package:flutter/material.dart';
import 'package:proyecto_ubicua/models/Product.dart';

import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Uniformes Vel Vel",
            style: TextStyle(color: Colors.white),
          ),
          product.title,
          // Text(
          //   product.title,
          //   style: Theme.of(context)
          //       .textTheme
          //       .headline4
          //       .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          // ),
          SizedBox(height: kDefaultPaddin),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Precio\n"),
                    // TextSpan(
                    //   //text: "\$${product.price}",
                    //   text: "\$",
                    //   style: Theme.of(context).textTheme.headline4.copyWith(
                    //       color: Colors.white, fontWeight: FontWeight.bold),
                    // ),
                  ],
                ),
              ),
              product.price,
              SizedBox(
                width: 110,
              ),
              SizedBox(width: kDefaultPaddin),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  //child: product.image,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
