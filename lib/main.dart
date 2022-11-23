import 'package:flutter/material.dart';
import 'package:simple/friday.dart';
import 'package:simple/monday.dart';
import 'package:simple/splash.dart';
import 'package:simple/thursday.dart';
import 'package:simple/tuesday.dart';
import 'package:simple/wednesday.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: First(),
    );
  }
}
class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Splash());
  }
}
