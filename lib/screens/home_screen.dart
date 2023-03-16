
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/commons.dart';
import '../common/slider-item.dart';
import '../common/task-item.dart';
import '../models/enumerations/catagory.dart';
import '../models/task.dart';

class HomeScreen extends StatefulWidget {
  final Animation<double> scaleAnimation;
  final Duration duration;
  final bool isClosed;
  final VoidCallback openClose;
  const HomeScreen({
    required this.scaleAnimation,
    required this.duration,
    required this.isClosed,
    required this.openClose,
    Key? key,
  }) : super(key: key);
  
  @override
 State<HomeScreen> createState() => _HomeScreenState();
}
  class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return AnimatedPositioned(
      duration: widget.duration,
      top: 0,
      bottom: 0,
      left: widget.isClosed ? 0 : 0.5 * screenWidth,
      right: widget.isClosed ? 0 : -0.7 * screenWidth,
      child: ScaleTransition(
        scale: widget.scaleAnimation,
      child: Scaffold(
          backgroundColor: secondBackground,
          floatingActionButton: FloatingActionButton(
            backgroundColor: businessIndicator,
            onPressed: () {
              // ignore: avoid_print
              print("Add task button clicked !!!");
            },
            child: const Icon(Icons.add),
          ),
                 body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: widget.openClose,
                      icon: const Icon(Icons.menu),
                      color: Colors.white.withOpacity(.3),
                    ),
                        Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white.withOpacity(.3),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.notifications_outlined,
                          color: Colors.white.withOpacity(.3),
                        ),
                        const SizedBox(
                          width: 5,
                        )
                      ],
                    )
                  ],
                ),
                  const SizedBox(
                  height: 25,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    "What's up,  Kalidou!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                 const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    "CATEGORIES",
                    style: TextStyle(
                        color: Colors.white.withOpacity(.4),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                // Bloc horizontal Slider
                Container(
                  height: 150.0,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                       SliderItem(
                        screenWidth: screenWidth,
                        completionPercentage: .5,
                        title: 'Business',
                        tasksNumber: 40,
                        indicatorColor: businessIndicator,
                      ),
                      SliderItem(
                        screenWidth: screenWidth,
                        completionPercentage: .4,
                        title: 'Personal',
                        tasksNumber: 18,
                        indicatorColor: personalIndicator,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    "TODAY'S TAKS",
                    style: TextStyle(
                        color: Colors.white.withOpacity(.4),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                  Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    children: [
                      TaskItem(
                        task: Task(
                          isDone: true,
                          category: Category.business,
                          title: 'Daily meeting with team',
                        ),
                      ),
                      TaskItem(
                        task: Task(
                          isDone: true,
                          category: Category.personal,
                          title: 'Do the dishes',
                        ),
                      ),
                       TaskItem(
                        task: Task(
                          isDone: false,
                          category: Category.business,
                          title: 'Make payment function',
                        ),
                      ),
                      TaskItem(
                        task: Task(
                          isDone: false,
                          category: Category.personal,
                          title: 'Buy electricity',
                        ),
                      ),
                      TaskItem(
                        task: Task(
                          isDone: true,
                          category: Category.business,
                          title: 'Do the report',
                        ),
                      ),
                      TaskItem(
                        task: Task(
                          isDone: true,
                          category: Category.personal,
                          title: 'Buy greceries',
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
