
import 'enumerations/catagory.dart';

class Task {
  final String title;
  final Category category;
  final bool isDone;

  Task({
    required this.title,
    required this.category,
    required this.isDone,
  });
}
