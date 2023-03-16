import 'package:flutter/cupertino.dart';

import 'Menu-screnn.dart';
import 'home_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});
  
  @override
  State<StatefulWidget> createState() => _MainLayoutState();
  }

  class _MainLayoutState extends State<MainLayout>
    with SingleTickerProviderStateMixin {
  bool isClosed = true;
  late AnimationController _animationController;
  Duration duration = const Duration(milliseconds: 500);
  late Animation<double> _scaleAnimation;
  
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: duration,
    );
    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 0.85).animate(_animationController);
  }
@override
   void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  toggleMmenu() {
    setState(() {
      isClosed = !isClosed;
      if (isClosed) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }
 @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const MenuScreen(),
        HomeScreen(
          openClose: toggleMmenu,
          isClosed: isClosed,
          duration: duration,
          scaleAnimation: _scaleAnimation,
        ),
      ],
    );
  }
}

