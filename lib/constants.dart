import 'package:flutter/material.dart';

const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);

const kDefaultPaddin = 20.0;

const bgBlueGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0xFF0E4382), Color(0xFF0784BA), Color(0xFF00639B)],
  //colors: [Color(0xFF0784BA), Color(0xFFFFFFF), Color(0xFF0784BA)],
);

const bgBlueGradientLOGIN =
    LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter,
        //colors: [Color(0xFF0784BA), Color(0xFFFFFFF)],
        colors: [
      Color(0xFF003978),
      Color(0xFF7ea9d6),
      Color(0xFFb3cce7),
    ]);

const borderRadCardLogin = BoxDecoration(
  color: bgText,
  borderRadius: BorderRadius.all(Radius.circular(40.0)),
  boxShadow: [
    BoxShadow(
      color: Colors.black,
      spreadRadius: 1,
      blurRadius: 10,
      offset: Offset(0, 3),
    ),
  ],
);

const bgText = Color(0xFFE9E9E9);
