// import 'package:flutter/material.dart';


// class MyApp extends StatelessWidget {
// 	const MyApp({super.key});

// 	@override
// 	Widget build(BuildContext context) {
// 		return const MaterialApp(
// 			home: CounterHomePage(),
// 		);
// 	}
// }

// class CounterHomePage extends StatefulWidget {
// 	const CounterHomePage({super.key});

// 	@override
// 	State<CounterHomePage> createState() => _CounterHomePageState();
// }

// class _CounterHomePageState extends State<CounterHomePage> {
// 	int _counter = 0;

// 	void _incrementCounter() {
// 		setState(() {
// 			_counter++;
// 		});
// 	}

// 	@override
// 	Widget build(BuildContext context) {
// 		return Scaffold(
// 			appBar: AppBar(title: const Text('Counter')),
// 			body: Container(
// 				child: Column(
// 					mainAxisAlignment: MainAxisAlignment.center,
// 					children: <Widget>[
// 						Text('$_counter', key: const Key('counter_text'), style: const TextStyle(fontSize: 36)),
// 					],
// 				),
// 			),
// 			floatingActionButton: FloatingActionButton(
// 				onPressed: _incrementCounter,
// 				tooltip: 'Increment',
// 				child: const Icon(Icons.add),
// 			),
// 		);
// 	}
// }