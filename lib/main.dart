import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  // runApp(YourApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('My'),
    );
  }
}

class YourApp extends StatefulWidget {
  const YourApp({Key? key}) : super(key: key);

  @override
  State<YourApp> createState() => _YourAppState();
}

class _YourAppState extends State<YourApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Your'),
    );
  }
}
