import 'package:flutter/material.dart';
import 'package:u_matter/pages/get_started.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GetStarted(),
    );
  }
}

