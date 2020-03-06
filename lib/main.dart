import 'package:flutter/material.dart';
import 'package:u_matter/pages/page_switcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageSwitcher(),
    );
  }
}

