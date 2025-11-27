// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// // Define MyApp 
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 0, 110, 255),
//         appBar: AppBar(
//           title: const Text('Products'), 
//           backgroundColor: Colors.white,
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: const [
//              ProductCard(product: Product.dart),
//               SizedBox(height: 20),
//               ProductCard(product: Product.flutter),
//               SizedBox(height: 20),
//               ProductCard(product: Product.firebase), 
             
 
//             ],
//           ),
//         ),
//       ), // Closes Scaffold
//     ); // Closes MaterialApp and ends the return statement
//   } // Closes the build method
// }

// //  emum for Products
// enum Product { //enum use as mini data model
//   dart(
//     title: 'Dart',
//     description: 'The best object language',
//     image: 'assets/dart.png',
//   ),
//   flutter(
//     title: 'Flutter',
//     description: 'The best mobile widget library',
//     image: 'assets/flutter.png',
//   ),
//   firebase(
//     title: 'Firebase',
//     description: 'The best cloud database',
//     image: 'assets/firebase.png',
//   );

  
//   final String title;
//   final String description;
//   final String image;

  
//   const Product({
//     required this.title,
//     required this.description,
//     required this.image,
//   });
// }

// class ProductCard  extends StatelessWidget {
//   final Product product;

//   const ProductCard({
//     super.key,
//     required this.product,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
     
      
//       child: Padding(
//         padding: const EdgeInsets.all(20.0),
//          child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(20),
            
//             child: Image.asset(product.image, height: 100, width: 100),
//           ),
//           Text(
//             product.title,
//             style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
//             ),  
//           Text(
//             product.description,
//             style: const TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
//             ),
          
//           ],
//         ),
//       ),
//     );
//   }
// }