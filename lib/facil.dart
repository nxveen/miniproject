import 'package:flutter/material.dart';
import 'package:miniproject/bikaroo.dart';
import 'package:miniproject/login.dart';
import 'package:miniproject/fuel.dart';
import 'package:miniproject/jin.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Facility extends StatelessWidget {
  final Barcode? text;
  Facility({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    var id = '1';
    var petrol_pump = '';
    var auto1 = '';
    var p1 = '';
    var auto2 = '';
    var p2 = '';
    var mech1 = '';
    var p3 = '';
    var mech2 = '';
    var p4 = '';
    var dist='';
    String? Data = '';
    if (text != null) {
      Data = text!.code;
    }
    else
        Data='id=4, petrol_pump=Bharat petroleum Kalamassery, auto1=Ravi, p1=9608529145, auto2=Ashin, p2=730688471,mech1=Midhun, p3=9446111248,mech2=Chan, p4=9633450201, dist=5';
    if (Data != null) {
        var value_list = Data.split(",");
        id = value_list[0].split("=")[1];
        petrol_pump = value_list[1].split("=")[1];
        auto1 = value_list[2].split("=")[1];
        p1 = value_list[3].split("=")[1];
        auto2 = value_list[4].split("=")[1];
        p2 = value_list[5].split("=")[1];
        mech1 = value_list[6].split("=")[1];
        p3 = value_list[7].split("=")[1];
        mech2 = value_list[8].split("=")[1];
        p4 = value_list[9].split("=")[1];
        dist = value_list[10].split("=")[1];
      }

    int d=int.parse(dist);
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/page3.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Login()),
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
        SizedBox(height: h * 0.11),
        Center(
          child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FavoriteWidget(id: id)),
                );
              },
              child: Column(children: [
                Image.asset('assets/img1.jpg'),
                Text('BIKAROO ',
                    style: TextStyle(
                      fontSize: h * (0.12 / 5.0),
                      fontWeight: FontWeight.bold,
                      letterSpacing: h * (0.1 / 60.0),
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ))
              ])),
        ),
        SizedBox(height: h * 0.11),
        Center(
          child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Fuel(
                          petrol_pump: petrol_pump,
                          mech1: mech1,
                          p3: p3,
                          mech2: mech2,
                          p4: p4,d: d)),
                );
              },
              child: Column(children: [
                Image.asset('assets/img2.jpg'),
                Text('FUEL DELIVERY / VEHICLE REPAIR',
                    style: TextStyle(
                      fontSize: h * (0.12 / 5.0),
                      fontWeight: FontWeight.bold,
                      letterSpacing: h * (0.1 / 60.0),
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ))
              ])),
        ),
        SizedBox(height: h * 0.12),
        Center(
          child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Jin(auto1: auto1, p1: p1, auto2: auto2, p2: p2)),
                );
              },
              child: Column(children: [
                Image.asset('assets/vector.png'),
                Text('JINRICKSHAW',
                    style: TextStyle(
                      fontSize: h * (0.12 / 5.0),
                      fontWeight: FontWeight.bold,
                      letterSpacing: h * (0.1 / 60.0),
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ))
              ])),
        ),
      ])
    ]));
  }
}
