// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// enum ButtonType { primary, secondary, disabled }
// enum IconPosition { left, right }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Custom Button'),
//           backgroundColor: Colors.grey,
//         ),
//         body: Container(
//           color: Colors.grey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: const [
//               CustomButton(
//                 icon: Icons.check,
//                 label: 'Submit',
//                 type: ButtonType.primary,
//                 iconPosition: IconPosition.left,
//               ),
//               SizedBox(height: 10),
//               CustomButton(
//                 label: 'Time',
//                 icon: Icons.access_time,
//                 type: ButtonType.secondary,
//                 iconPosition: IconPosition.right,
//               ),
//               SizedBox(height: 10),
//               CustomButton(
//                 label: 'Account',
//                 icon: Icons.account_tree,
//                 type: ButtonType.disabled,
//                 iconPosition: IconPosition.right,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomButton extends StatelessWidget {
//   final String label;
//   final IconData icon;
//   final ButtonType type;
//   final IconPosition iconPosition;

//   const CustomButton({
//     super.key,
//     required this.label,
//     required this.icon,
//     this.type = ButtonType.primary,
//     this.iconPosition = IconPosition.left,
//   });

 
//   Color _getColor() { //get color based on button type
//     switch (type) {
//       case ButtonType.primary:
//         return Colors.blue;
//       case ButtonType.secondary:
//         return Colors.green;
//       case ButtonType.disabled:
//         return const Color.fromARGB(255, 128, 127, 127);
//     }
//   }

  
//   Color _getTextColor() { // avoid repeated the code
//     if (type == ButtonType.disabled) {
//       return const Color.fromARGB(115, 0, 0, 0);
//     } else {
//       return Colors.white;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: _getColor(), 
//       margin: const EdgeInsets.all(8.0),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: iconPosition == IconPosition.right 
//               ? [
//                   Text(
//                     label,
//                     style: TextStyle(fontSize: 20.0, color: _getTextColor()),
//                   ),
//                   const SizedBox(width: 8.0),
//                   Icon(icon, size: 40.0, color: _getTextColor()),
//                 ]
//               : [
//                   Icon(icon, size: 40.0, color: _getTextColor()),
//                   const SizedBox(width: 8.0),
//                   Text(
//                     label,
//                     style: TextStyle(fontSize: 20.0, color: _getTextColor()),
//                   ),
//                 ],
//         ),
//       ),
//     );
//   }
// }
