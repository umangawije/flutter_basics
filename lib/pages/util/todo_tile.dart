import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 25, right: 25),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            //CHECKBOX
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),

            //Task name
            Text(
              taskName,
              style: TextStyle(
                decoration:
                    taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.purple[100],
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
