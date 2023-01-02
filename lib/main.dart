import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Lottery Application')),
        ),
        body: SafeArea(
          child: Center(child: Text(x.toString() , style: TextStyle(fontSize: 50),),
        ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x++;
            setState(() {
              
            });
            print(x.toString());
          
        },
        child: Icon(Icons.add),
        ),
      ),
    );
  }
}