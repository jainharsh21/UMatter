import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:u_matter/utils/sign_in_doctor.dart';

import 'login_page_doctor.dart';

class FirstScreenDoctor extends StatefulWidget {
  @override
  _FirstScreenDoctorState createState() => _FirstScreenDoctorState();
}

class _FirstScreenDoctorState extends State<FirstScreenDoctor> {
  Map data = {
    "username": "",
    "name": name,
    "email": email,
    "googleID": uID,
    "isMedDatEnt": "true",
    "userType": "professional",
    "profilePic": imageUrl,
  };
  submitData(Map data) async {
    String url = "http://192.168.43.102:3001/api/upsertUser";
    final response = await post(url, body: data);
    print(response.body);
    print(response.statusCode);
  }

  @override
  void initState() {
    super.initState();
    submitData(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blue[100], Colors.blue[400]],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(
                  imageUrl,
                ),
                radius: 60,
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: 40),
              Text(
                'Doctor NAME',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              Text(
                name,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'EMAIL',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              Text(
                email,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              RaisedButton(
                onPressed: () {
                  signOutGoogle();
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) {
                    return LoginPageDoctor();
                  }), ModalRoute.withName('/'));
                },
                color: Colors.deepPurple,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Sign Out',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:u_matter/utils/sign_in_doctor.dart';

// import 'login_page_doctor.dart';

// class FirstScreenDoctor extends StatelessWidget {
//   Map data = {
//     "username": "",
//     "name": name,
//     "email": email,
//     "googleID": uID,
//     "isMedDatEnt": "true",
//     "userType": "professional",
//     "profilePic": imageUrl,
//   };
//   submitData(Map data) async{
//     String url = "http://192.168.43.102:3001/api/upsertUser";
//     final response = await post(url,body: data);
//     print(response.body);
//     print(response.statusCode);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topRight,
//             end: Alignment.bottomLeft,
//             colors: [Colors.blue[100], Colors.blue[400]],
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             mainAxisSize: MainAxisSize.max,
//             children: <Widget>[
//               CircleAvatar(
//                 backgroundImage: NetworkImage(
//                   imageUrl,
//                 ),
//                 radius: 60,
//                 backgroundColor: Colors.transparent,
//               ),
//               SizedBox(height: 40),
//               Text(
//                 'Doctor NAME',
//                 style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black54),
//               ),
//               Text(
//                 name,
//                 style: TextStyle(
//                     fontSize: 25,
//                     color: Colors.deepPurple,
//                     fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'EMAIL',
//                 style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black54),
//               ),
//               Text(
//                 email,
//                 style: TextStyle(
//                     fontSize: 25,
//                     color: Colors.deepPurple,
//                     fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 40),
//               RaisedButton(
//                 onPressed: () {
//                   signOutGoogle();
//                   Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return LoginPageDoctor();}), ModalRoute.withName('/'));
//                 },
//                 color: Colors.deepPurple,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     'Sign Out',
//                     style: TextStyle(fontSize: 25, color: Colors.white),
//                   ),
//                 ),
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(40)),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
