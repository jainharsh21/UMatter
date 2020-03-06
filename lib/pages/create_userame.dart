import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:u_matter/pages/first_screen.dart';
import 'package:u_matter/utils/sign_in.dart';

class CreateUsername extends StatefulWidget {
  @override
  _CreateUsernameState createState() => _CreateUsernameState();
}

class _CreateUsernameState extends State<CreateUsername> {
  Map data = {
    "username": "",
    "name": name,
    "email": email,
    "googleID": uID,
    "isMedDatEnt": "true",
    "userType": "regular",
    "profilePic": imageUrl,
  };
  submitData(Map data) async{
    String url = "http://192.168.43.102:3001/api/upsertUser";
    final response = await post(url,body: data);
    print(response.body);
    print(response.statusCode);
  }
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text("Create A Username"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30.0),
          ),
          Center(
            child: Text(
              "Create A Username",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.0),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Center(
              child: Container(
                  child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                  labelStyle: TextStyle(fontSize: 15.0),
                ),
              )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          OutlineButton(
            splashColor: Colors.grey,
            onPressed: () {
              setState(() {
                data["username"] = _controller.text;
              });
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return FirstScreen();
                  },
                ),
              );
              print(data);
              submitData(data);
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            highlightElevation: 10,
            borderSide: BorderSide(color: Colors.grey),
            child: (Text(
              "Create Account",
              style: TextStyle(
                fontSize: 16.0,
              ),
            )),
          ),
        ],
      ),
    );
  }
}
