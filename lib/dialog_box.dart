import 'package:budget_system/my_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //TextField container
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Create new task",
              ),
            ),

            //Save and Cancel Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //SAVE BUTTON
                MyButton(text: "Save", onPressed: onSave),
                SizedBox(
                  width: 4,
                ),
                //CANCEL BUTTON
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
