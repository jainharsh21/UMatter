import 'package:flutter/material.dart';
import 'package:u_matter/pages/login_page.dart';
import 'package:u_matter/pages/login_page_doctor.dart';

class PageSwitcher extends StatefulWidget {
  @override
  _PageSwitcherState createState() => _PageSwitcherState();
}

class _PageSwitcherState extends State<PageSwitcher> {
  final controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: <Widget>[
        LoginPage(),
        LoginPageDoctor(),
      ],
    );
  }
}