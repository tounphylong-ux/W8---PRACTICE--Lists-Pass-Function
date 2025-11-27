import 'package:flutter/material.dart';
import 'package:quiz/W8%20-%20PRACTICE-%20Lists,%20Pass%20Functions/EXERCISE-2/ui/screens/temperature_screen.dart';

import 'ui/screens/welcome_screen.dart';
 
class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
  bool isClicked = false;

    void handlesClicked(){
      setState(() {
        isClicked = !isClicked;
      });
    }
  
  @override
  Widget build(context) {

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff16C062),
                Color(0xff00BCDC),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: isClicked ? TemperatureScreen() : WelcomeScreen(onStartPressed: handlesClicked,),
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}
