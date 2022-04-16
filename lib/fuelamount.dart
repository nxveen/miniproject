import 'package:flutter/material.dart';
import 'package:miniproject/fuel2.dart';

class Fuelamount extends StatelessWidget {
  var petrol_pump = '';
  var mech1 = '';
  var p3 = '';
  var mech2 = '';
  var p4 = '';
  Fuelamount(
      {Key? key,
      required this.petrol_pump,
      required this.mech1,
      required this.p3,
      required this.mech2,
      required this.p4})
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
            image: AssetImage('assets/fuel1.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Fuel2(
                    petrol_pump: petrol_pump,
                    mech1: mech1,
                    p3: p3,
                    mech2: mech2,
                    p4: p4)),
          );
        },
        child: Padding(
          padding: EdgeInsets.fromLTRB(h * 0.007, h * 0.03, 0, 0),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: h * 0.03,
          ),
        ),
      ),
      Column(children: [
        SizedBox(height: h * 0.5),
        Center(
          child: Container(
            height: h * 0.074,
            width: w * .85,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              gradient: const LinearGradient(
                colors: [Colors.transparent, Colors.transparent],
              ),
              borderRadius: BorderRadius.all(Radius.circular(h * 0.016)),
              color: Colors.white,
            ),
            child: Center(
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.attach_money,
                      color: Colors.white,
                    ),
                  ),
                  hintText: "AMOUNT",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: h * 0.029,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ])
    ]));
  }
}
