// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MyApp(),
//   ));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("SEASONS"),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           children: const [
//             Expanded(
//               child: SeasonCard(
//                 country: "FRANCE",
//                 initialseason: Season.winter,
//               ),
//             ),
//             SizedBox(width: 16),
//             Expanded(
//               child: SeasonCard(
//                 country: "CAMBODIA",
//                 initialseason: Season.summer,
//               ),
//             ),
//           ],

//         ),
//       ),
//     );
//   }
// }

// enum Season {
//   winter,
//   spring,
//   summer,
//   fall,
// }
// extension SeasonImage on Season {
//   String get name {
//     switch (this) {
//       case Season.winter:
//         return 'assets/winter.png';
//       case Season.spring:
//         return 'assets/summer.png';
//       case Season.summer:
//         return 'assets/spring.png';
//       case Season.fall:
//         return 'assets/fall.png';
//     }
//   }
// }



// class SeasonCard extends StatefulWidget {
//   final String country;
//   final Season initialseason;
//   const SeasonCard({
//     super.key,
//     required this.country,
//     required this.initialseason,A
//   });
//   @override
//   State<SeasonCard> createState() => _SeasonCardState();
// }

// class _SeasonCardState extends State<SeasonCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.amber,
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               widget.country,
//               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               'Initial Season: ${widget.initialseason}',
//               style: const TextStyle(fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
