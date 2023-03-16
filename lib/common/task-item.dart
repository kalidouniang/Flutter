import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/enumerations/catagory.dart';
import '../models/task.dart';
import 'commons.dart';

class TaskItem extends StatefulWidget {
  
  final Task task;
  const TaskItem({
    super.key,
    required this.task,
  });
  
  @override
 State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
            color: primaryBackground,
            borderRadius: BorderRadius.circular(20.0)),
             child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Container(
                 padding: const EdgeInsets.all(2.0),
                  margin: const EdgeInsets.only(right: 20),
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: checkItemColor(widget.task.category),
                    shape: BoxShape.circle,
                  ),
                    child: widget.task.isDone
                      ? const Icon(
                          Icons.check,
                          size: 16,
                          color: Colors.white,
                        )
                      : Container(
                          decoration: const BoxDecoration(
                            color: primaryBackground,
                            shape: BoxShape.circle,
                          ),
                        )),Text(
                widget.task.title,
                style: TextStyle(
                  decoration: widget.task.isDone
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
Color checkItemColor(Category category) {
  switch (category) {
    case Category.business:
      return businessIndicator;
    case Category.personal:
      return personalIndicator;
    default:
      return Colors.white;
  }
}
  
