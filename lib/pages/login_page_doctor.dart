import 'package:flutter/material.dart';
import 'package:u_matter/pages/first_screen_doctor.dart';
import 'package:u_matter/utils/sign_in_doctor.dart' as doctor;
import 'package:google_fonts/google_fonts.dart';

class LoginPageDoctor extends StatefulWidget {
  @override
  _LoginPageDoctorState createState() => _LoginPageDoctorState();
}

class _LoginPageDoctorState extends State<LoginPageDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.orange,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/doctor_splash.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        // color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Container(
                    height: 180.0,
                    // width: 550.0,
                    decoration: new BoxDecoration(
                        border: new Border.all(
                            width: 1.0,
                            color: Colors
                                .transparent), //color is transparent so that it does not blend with the actual color specified
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(30.0)),
                        color: new Color.fromRGBO(255, 255, 255,
                            0.3) // Specifies the background color and the opacity
                        ),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Text(
                            "uMatter",
                            style: GoogleFonts.concertOne(
                              textStyle: TextStyle(
                                fontSize: 60.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff465352),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0, left: 10.0),
                          child: Text(
                            'Because YOU matter too!',
                            style: GoogleFonts.concertOne(
                              textStyle: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.deepPurpleAccent[800],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: SizedBox(
                            height: 40.0,
                            width: 250.0,
                            child: _signInButton(),
                            // child: OutlineButton(
                            //   splashColor: Colors.grey,
                            //   onPressed: () {},
                            //   shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(40)),
                            //   highlightElevation: 10,
                            //   borderSide: BorderSide(color: Colors.grey),
                            //   child: (Text(
                            //     "Get Started",
                            //     style: TextStyle(
                            //       fontSize: 16.0,
                            //     ),
                            //   )),
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // FlutterLogo(size: 150),
              // SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        doctor.signInWithGoogle().whenComplete(() {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return FirstScreenDoctor();
              },
            ),
          );
        });
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      highlightElevation: 10,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Google Sign-in',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class LoginPageDoctor extends StatefulWidget {
//   @override
//   _LoginPageDoctorState createState() => _LoginPageDoctorState();
// }

// class _LoginPageDoctorState extends State<LoginPageDoctor> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text("Doctor"),
//     );
//   }
// }