import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class Semantic extends StatefulWidget {
  @override
  _SemanticState createState() => _SemanticState();
}

class _SemanticState extends State<Semantic> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(appBar: AppBar(
    //   title: Text("hello"),
    //   backgroundColor: Colors.white,
    // ),);
    return WebviewScaffold(url: "http://192.168.43.102:5500",);
  }
}
