// import 'package:flutter/material.dart';

// import 'my_button.dart';

// // ignore: must_be_immutable
// class DialogBox extends StatelessWidget {
//   final controller;
//   VoidCallback onSave;
//   VoidCallback onCancel;

//   DialogBox({
//     super.key,
//     required this.controller,
//     required this.onSave,
//     required this.onCancel,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       // backgroundColor: Colors.yellow[200],
//       title: Row(children: [
//         Text('Successfully added !'),
//         SizedBox(width: 10),
//         Icon(
//           Icons.check,
//           color: Colors.green,
//         )
//       ]),
//       content: GestureDetector(
//         onTap: () {
//           Navigator.of(context).pop();
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(30),
//             color: Color.fromARGB(255, 17, 228, 24),
//           ),
//           height: 30,
//           child: Center(child: Text("check your cart")),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import 'my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[200],
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Thêm việc cần làm",
              ),
            ),

            //button -> save + cancel
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              //save button
              MyButton(text: "Lưu", onPressed: onSave),

              const SizedBox(width: 8),

              //cancel button
              MyButton(text: "Hủy", onPressed: onCancel),
            ]),
          ],
        ),
      ),
    );
  }
}
