// TODO Implement this library.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMenuItem extends StatelessWidget {
  final String menuText;
  final IconData menuIcon;
  const MyMenuItem({
    Key? key,
    required this.menuText,
    required this.menuIcon,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
   return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(children: [
        Icon(
          menuIcon,
          color: Colors.white.withOpacity(.2),
        ), Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            menuText,
            style: const TextStyle(
                fontFamily: 'Poppins-Regular',
                color: Colors.white,
                fontSize: 18),
          ),
        ),
      ]),
    );
  }
}
