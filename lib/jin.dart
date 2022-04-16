import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Jin extends StatelessWidget {
  var auto1 = '';
  var p1 = '';
  var auto2 = '';
  var p2 = '';
  Jin(
      {Key? key,
      required this.auto1,
      required this.p1,
      required this.auto2,
      required this.p2})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/jin.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Column(children: [
        SizedBox(height: h * 0.45),
        Center(
          child: TextButton(
            onPressed: () => launch("tel://$p1"),
            child: Container(
                height: h * 0.076,
                width: w * 0.85,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromRGBO(191, 90, 242, 0),
                        Color.fromRGBO(191, 90, 242, 0),
                      ],
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(color: Colors.white)),
                child: Center(
                  child: Text('$auto1  +91 $p1',
                      style: TextStyle(
                        fontSize: h * (0.12 / 5.0),
                        fontWeight: FontWeight.bold,
                        letterSpacing: h * (0.05 / 60.0),
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      )),
                )),
          ),
        ),
        SizedBox(height: h * 0.05),
        Center(
          child: TextButton(
            onPressed: () => launch("tel://$p2"),
            child: Container(
                height: h * 0.076,
                width: w * 0.85,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromRGBO(191, 90, 242, 0),
                        Color.fromRGBO(191, 90, 242, 0),
                      ],
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(color: Colors.white)),
                child: Center(
                  child: Text('$auto2   +91 $p2',
                      style: TextStyle(
                        fontSize: h * (0.12 / 5.0),
                        fontWeight: FontWeight.bold,
                        letterSpacing: h * (0.05 / 60.0),
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
