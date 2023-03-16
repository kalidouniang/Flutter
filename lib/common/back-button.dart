import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeftArrowButton extends StatelessWidget {
  const LeftArrowButton({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
   return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: Colors.white.withOpacity(0.2),
              style: BorderStyle.solid,
              width: 2.0)),
               child: Container(
        padding: const EdgeInsets.only(left: 5.0),
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 15.0,
        ),
      ),
    );
  }
  

  }
