import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:u_matter/models/articles.dart';
import 'package:u_matter/utils/sign_in.dart';

class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  List<Articles> _articles = List<Articles>();
  List textList = [];
  List titleList = [];
  List cateringList = [];
  List topicTypeList = [];

  getData() async {
    String url = "http://192.168.43.102:3001/api/getAllArticlesByScore";
    final response = await get(url);
    Iterable list = json.decode(response.body);
    _articles = list.map((model) => Articles.fromJson(model)).toList();
    // print(response.body);
    // print(_articles);
    for (var item in _articles) {
      textList.add(item.text);
      titleList.add(item.title);
      cateringList.add(item.catering);
      topicTypeList.add(item.topicType);
      setState(() {
        cateringList = cateringList;
        topicTypeList = topicTypeList;
      });
    }
    print(response.statusCode);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "uMatter",
          style: GoogleFonts.stylish(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: _articles.isEmpty
          ? Center(child: CircularProgressIndicator(
            backgroundColor: Colors.black,
          ))
          : SafeArea(
              child: Column(
                children: <Widget>[
                  Card(
                    margin: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    elevation: 10.0,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(8.0),
                      leading: CircleAvatar(
                        child: Image.network(imageUrl),
                      ),
                      subtitle: Chip(
                        label: Text(
                          topicTypeList[2],
                          style: TextStyle(
                              color: Colors.black, fontStyle: FontStyle.italic),
                        ),
                      ),
                      title: Text(
                        titleList[2],
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),Card(
                    margin: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    elevation: 10.0,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(8.0),
                      leading: CircleAvatar(
                        child: Image.network(imageUrl),
                      ),
                      subtitle: Chip(
                        label: Text(
                          topicTypeList[1],
                          style: TextStyle(
                              color: Colors.black, fontStyle: FontStyle.italic),
                        ),
                      ),
                      title: Text(
                        titleList[1],
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    elevation: 10.0,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(8.0),
                      leading: CircleAvatar(
                        child: Image.network(imageUrl),
                      ),
                      subtitle: Chip(
                        label: Text(
                          topicTypeList[0],
                          style: TextStyle(
                              color: Colors.black, fontStyle: FontStyle.italic),
                        ),
                      ),
                      title: Text(
                        titleList[0],
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
