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
          title: const Text('Stateful Widget-Button'),
          backgroundColor: Colors.white, 
        ),
        body: Container( 
          padding: const EdgeInsets.all(16.0), //edge it's control space on padding or margin
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 10,
            children: [/// make selectable icon 4 times 
              Expanded(child: SelectableIcon()),
              Expanded(child: SelectableIcon()),
              Expanded(child: SelectableIcon()),
              Expanded(child: SelectableIcon()),
            ],
            
          
          ),
        ),
      ),
    );
  }
}

class SelectableIcon extends StatefulWidget {
  const SelectableIcon({super.key});

  @override
  State<SelectableIcon> createState() => _SelectableIconState(); // createState is method and statefulwidget is class , and use state here so store the date 
}

class _SelectableIconState extends State<SelectableIcon> {
  bool isSelected = false; /// boolean variable used to store a value that can change

  @override
  Widget build(BuildContext context) {
    return ElevatedButton( //Material Design button in Flutter that looks raised (3D style) with a background color and shadow.
      onPressed: () {
        setState(() { //to rebuild the UI because something changed. (to update the UI)
          isSelected = !isSelected; //flips the value if true then false if false then true
        });
      },
      style: ElevatedButton.styleFrom( 
        backgroundColor: isSelected ? Colors.blue[500] : Colors.blue[50],
      ),
      child: Text(
        isSelected ? "selected" : "Not selected",//ternary operator is a short way to write an if-else statement
        style:TextStyle(
          color: isSelected ? Colors.white : Colors.black
        )
      
      ),
    );
  }
}
