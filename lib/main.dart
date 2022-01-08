import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GUESS THE NUMBER'),
      ),
      body: Container(
        // เทียบได้กับแท็ก <div> ของ HTML
        decoration: BoxDecoration(
            color: Colors.lightGreenAccent,
            border: Border.all(width: 5.0, color: Colors.white54),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(2.0, 5.0),
                blurRadius: 5.0,
                spreadRadius: 2.0,
              ),
            ]),
        //alignment: Alignment.center,
        child: Center(
          child: Column(
            //mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/Images/guess_logo.png', width: 100.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'GUESS',
                    style: TextStyle(fontSize: 35.0, color: Color(0x805A7129)),
                  ),
                  TextButton(
                    child: Text('THE NUMBER'),

                    onPressed: () {},
                  ),
                ],
              ),
              OutlinedButton(
                child: Text('GUESS'),
                onPressed: () {
                  // โค้ดที่จะทำงานเมื่อกดปุ่ม
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}