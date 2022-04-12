import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:miniproject/login.dart';
import 'package:miniproject/createaccount.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Mini());
}

class Mini extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/page1.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Column(
        children: [
          SizedBox(height: h * 0.04),
          Row(children: [
            SizedBox(width: w * 0.9),
            Image.asset('assets/qr.png', height: h * 0.04, width: w * 0.06),
          ]),
        ],
      ),
      Column(children: [
        SizedBox(height: h * 0.66),
        Center(
          child: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Createaccount()),
              );
            },
            child: Container(
                height: h * 0.08,
                width: w * 0.6,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromRGBO(77, 0, 237, 1),
                        Color.fromRGBO(139, 39, 222, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Center(
                  child: Text('Create Account',
                      style: TextStyle(
                        fontSize: h * (0.13 / 5.0),
                        fontWeight: FontWeight.bold,
                        letterSpacing: h * (0.1 / 60.0),
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      )),
                )),
          ),
        ),
        SizedBox(height: h * 0.07),
        Center(
          child: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: Container(
                height: h * 0.08,
                width: w * 0.6,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromRGBO(77, 0, 237, 1),
                        Color.fromRGBO(139, 39, 222, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Center(
                  child: Text('Login',
                      style: TextStyle(
                        fontSize: h * (0.13 / 5.0),
                        fontWeight: FontWeight.bold,
                        letterSpacing: h * (0.1 / 60.0),
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      )),
                )),
          ),
        ),
      ])
    ]));
  }
}
