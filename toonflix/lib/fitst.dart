import 'package:flutter/material.dart';

/*
void main() {
  runApp(const BasicApp());
}
*/
class BasicApp extends StatelessWidget {
  const BasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp();  // Google
    // return CupertinoApp(); // Apple
    return MaterialApp(
      // home: Text('Hello world!'),
      // Scaffold 는 앱 화면의 구성, 구조의 위젯.
      // named parameter
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          centerTitle: true,
          title: const Text('Hello flutter!'),
        ),
        body: const Center(
          child: Text('Hello world!'),
        ),
      ),
    );
  }
}
