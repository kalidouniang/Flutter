

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'commons.dart';

class SliderItem extends StatelessWidget {
  final double screenWidth;
  final String title;
  final int tasksNumber;
  final Color indicatorColor;
  final double completionPercentage;
  const SliderItem({
    Key? key,
    required this.screenWidth,
    required this.title,
    required this.tasksNumber,
    required this.indicatorColor,
    required this.completionPercentage,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        width: .5 * screenWidth,
        decoration: BoxDecoration(
            color: primaryBackground,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: kElevationToShadow[4]),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    'tasksNumber tasks',
                    style: TextStyle(
                        color: Colors.white.withOpacity(.4), fontSize: 14.0),
                  ),
                ),  Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                LinearProgressIndicator(
                  color: indicatorColor,
                  value: completionPercentage,
                  backgroundColor: Colors.grey.withOpacity(.5),
                ),
              ]),
        ),
      ),
    );
  }
}
