import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 45.0),
              ),
              Text(
                "Users",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.0, top: 10.0),
                child: OutlineButton(
                  splashColor: Colors.grey,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  highlightElevation: 10,
                  borderSide: BorderSide(color: Colors.grey),
                  child: (Text(
                    "Depression",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.0, top: 10.0),
                child: OutlineButton(
                  splashColor: Colors.grey,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  highlightElevation: 10,
                  borderSide: BorderSide(color: Colors.grey),
                  child: (Text(
                    "PTSD",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.0, top: 10.0),
                child: OutlineButton(
                  splashColor: Colors.grey,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  highlightElevation: 10,
                  borderSide: BorderSide(color: Colors.grey),
                  child: (Text(
                    "Paranoia",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.0, top: 10.0),
                child: OutlineButton(
                  splashColor: Colors.grey,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  highlightElevation: 10,
                  borderSide: BorderSide(color: Colors.grey),
                  child: (Text(
                    "Substance Abuse",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.0, top: 10.0),
                child: OutlineButton(
                  splashColor: Colors.grey,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  highlightElevation: 10,
                  borderSide: BorderSide(color: Colors.grey),
                  child: (Text(
                    "Anxiety",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  )),
                ),
              ),
            ],
          ),
          Divider(
            height: 10.0,
            thickness: 5.0,
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
          ),
          Column(
            children: <Widget>[
              Text(
                "Professionals",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.0, top: 20.0),
                child: OutlineButton(
                  splashColor: Colors.grey,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  highlightElevation: 10,
                  borderSide: BorderSide(color: Colors.grey),
                  child: (Text(
                    "Depression",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.0, top: 10.0),
                child: OutlineButton(
                  splashColor: Colors.grey,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  highlightElevation: 10,
                  borderSide: BorderSide(color: Colors.grey),
                  child: (Text(
                    "PTSD",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.0, top: 10.0),
                child: OutlineButton(
                  splashColor: Colors.grey,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  highlightElevation: 10,
                  borderSide: BorderSide(color: Colors.grey),
                  child: (Text(
                    "Paranoia",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.0, top: 10.0),
                child: OutlineButton(
                  splashColor: Colors.grey,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  highlightElevation: 10,
                  borderSide: BorderSide(color: Colors.grey),
                  child: (Text(
                    "Substance Abuse",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.0, top: 10.0),
                child: OutlineButton(
                  splashColor: Colors.grey,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  highlightElevation: 10,
                  borderSide: BorderSide(color: Colors.grey),
                  child: (Text(
                    "Anxiety",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
