import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 9;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Lottery Application")),
        ),
        body: x==4 ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery Winning Number is $x')),
            const SizedBox(height: 15,),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.done_all , color: Colors.green,size: 35,),
                    SizedBox(height: 15,),
                    Text('Congratulation You have won the Lottery' , style: TextStyle(color: Colors.black),textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          ],
        ):
        
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery Winning Number is $x')),
            const SizedBox(height: 15,),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.error, color: Colors.redAccent,size: 35,),
                    const SizedBox(height: 15,),
                    Text('Better Luck Next time your number is $x\n try again' , style: const TextStyle(color: Colors.black),textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(10);
            print(x);
            setState(() {
              
            });
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}