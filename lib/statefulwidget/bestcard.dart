import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Favorite cards'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: .5, color: Colors.black),
                ),
              ),
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    const Expanded(
                      flex:7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'title',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text('description'),
                        ],
                      ),
                    ),

                  
                  const SelectableIcon(),//a widget instance — it creates an object from your custom widget class:
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectableIcon extends StatefulWidget {
  const SelectableIcon({super.key});

  @override
  State<SelectableIcon> createState() => _SelectableIconState();// createState is method and statefulwidget is class , and use state here so store the date
}

class _SelectableIconState extends State<SelectableIcon> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() { //to update the UI
          isSelected = !isSelected; //flips the value
        });
      },
      icon: Icon(
        isSelected ? Icons.favorite : Icons.favorite_border, // ? : is a ternary operator meaning if-else
        color: isSelected ? Colors.red : Colors.grey,
      ),
    );
  }
}
