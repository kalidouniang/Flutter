import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/MyMenuItem.dart';
import '../common/back-button.dart';
import '../common/commons.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MyWidgetState();
}
class _MyWidgetState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 120.0, left: 40),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: primaryBackground,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // Le button retour
         Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.38),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                LeftArrowButton(),
              ],
            ),
          ),
          // L'avatar
           Container(
            decoration: BoxDecoration(
                color: primaryBackground,
                border: Border.all(
                  color: businessIndicator,
                  style: BorderStyle.solid,
                  width: 3.0,
                ),
                shape: BoxShape.circle),
            padding: const EdgeInsets.all(5.0),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/images/avatar.jpg"),
              maxRadius: 30,
            ),
          ),
           const SizedBox(
            height: 30,
          ),
          const Text(
            'Kalidou\nNiang',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 25,
          ),
          const MyMenuItem(
            menuText: 'Templates',
            menuIcon: Icons.bookmark_border_rounded,
          ),
          const MyMenuItem(
            menuText: 'Categories',
            menuIcon: Icons.grid_view_outlined,
          ),
          const MyMenuItem(
            menuText: 'Analytics',
            menuIcon: Icons.pie_chart_outline_outlined,
          ),
        ]),
      ),
    );
  }
} 