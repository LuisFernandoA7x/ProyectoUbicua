import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:proyecto_ubicua/constants.dart';
import 'package:proyecto_ubicua/models/Product.dart';
import 'package:proyecto_ubicua/screen/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final int index;
  DetailsScreen(this.index);
  //const DetailsScreen({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: products[index].color,
      //appBar: buildAppBar(context),
      body: Body(product: products[index]),
    );
  }

//   AppBar buildAppBar(BuildContext context) {
//     return AppBar(
//       backgroundColor: products[index].color,
//       elevation: 0,
//       leading: IconButton(
//         icon: SvgPicture.asset(
//           'assets/icons/back.svg',
//           color: Colors.white,
//         ),
//         onPressed: () => Navigator.pop(context),
//       ),
//       actions: <Widget>[
//         IconButton(
//           icon: SvgPicture.asset("assets/icons/search.svg"),
//           onPressed: () {},
//         ),
//         IconButton(
//           icon: SvgPicture.asset("assets/icons/cart.svg"),
//           onPressed: () {},
//         ),
//         SizedBox(width: kDefaultPaddin / 2)
//       ],
//     );
//   }
}
