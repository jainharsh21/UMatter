import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Upload extends StatefulWidget {
  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _textController = TextEditingController();
  // String selectedValue = "test";
  String selectedValue, selectedValue2;
  List topicType = [
    "depression",
    "anxiety",
    "ptsd",
    "substanceAbuse",
    "paranoia",
  ];
  List catering = [
    "general",
    "parents",
    "teens",
    "elderly",
    "middleAged",
    "20s",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Share Your Experience",
          style: GoogleFonts.stylish(
            textStyle: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 400.0,
          width: 350.0,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            elevation: 20.0,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Title',
                      hintText: 'Add the title of your experience',
                    ),
                    controller: _titleController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Content',
                        hintText: 'Describe Your Experience',
                      ),
                      controller: _textController,
                    ),
                  ),
                ),
                DropdownButton<String>(
                    hint: Text("Select Category Of Forum"),
                    value: selectedValue,
                    items: topicType.map((f) {
                      return DropdownMenuItem<String>(
                        child: Text(f),
                        value: f,
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        selectedValue = val;
                      });
                      // selectedValue = val;
                    }),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                DropdownButton<String>(
                    hint: Text("Select Appropriate Audience"),
                    value: selectedValue2,
                    items: catering.map((f) {
                      return DropdownMenuItem<String>(
                        child: Text(f),
                        value: f,
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        selectedValue2 = val;
                      });
                      // selectedValue = val;
                    }),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: OutlineButton(
                    splashColor: Colors.grey,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    highlightElevation: 10,
                    borderSide: BorderSide(color: Colors.grey),
                    child: (Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
