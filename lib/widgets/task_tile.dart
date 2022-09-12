import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';

class TaskTile extends StatelessWidget {

 final bool isChecked ;
 final String taskTitle;
 final  checkboxCallback;
 final longPressCallback;

 TaskTile({ required this.isChecked, required this.taskTitle, required this.checkboxCallback,
 this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTitle,
      style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing:  Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
        onChanged: checkboxCallback,
          //  onChanged: toggleCheckboxState(),
          ),
      );

  }
}



// class TaskCheckbox extends StatelessWidget {
//
//   final bool checkboxState ;
//   final Function toggleCheckboxState;
//
//   TaskCheckbox({required this.checkboxState, required this.toggleCheckboxState});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkboxState ,
//       onChanged: toggleCheckboxState(),
//     );
//   }
// }