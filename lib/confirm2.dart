import 'package:flutter/material.dart';
import 'package:miniproject/bikaroo.dart';
import 'package:miniproject/resources/hiker.dart';
import 'package:miniproject/hiker.dart';
bool isScanned4 = false;
bool isScanned3 = false;
bool isScanned2 = false;
bool isScanned1 = false;
bool _isPressed4 = false;
bool _isPressed3 = false;
bool _isPressed2 = false;
bool _isPressed1 = false;
bool isHost1=false;
bool isHost2=false;
bool isHost3=false;
bool isHost4=false;
String result='';

class Confirm2 extends StatelessWidget {
  var id = '';
  var id2 = '';
  Confirm2({required this.id, required this.id2}) {
    isScanned4 = (id == '4' ? true : false);
    isScanned3 = (id == '3' ? true : false);
    isScanned2 = (id == '2' ? true : false);
    isScanned1 = (id == '1' ? true : false);
    _isPressed4 = (id2 == '4' ? true : false);
    _isPressed3 = (id2 == '3' ? true : false);
    _isPressed2 = (id2 == '2' ? true : false);
    _isPressed1 = (id2 == '1' ? true : false);
    isHost1=(result=='1'?true:false);
    isHost2=(result=='2'?true:false);
    isHost3=(result=='3'?true:false);
    isHost4=(result=='4'?true:false);
  }
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bikaroo1.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FavoriteWidget(id: id)),
          );
        },
        child: Padding(
          padding: EdgeInsets.fromLTRB(h * 0.007, h * 0.03, 0, 0),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: h * 0.03,
          ),
        ),
      ),
      Column(children: [
        SizedBox(height: h * 0.85),
        Container(
            height: h * 0.15,
            width: w * 1,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(139, 39, 222, 0.5),
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Center(
              child: TextButton(
                onPressed: () async {await HitchHiker().requestRide(start_loc: id,end_loc: id2,user_id: '1234');
                result=await HitchHiker().searchHost(start_loc_str: id, end_loc_str: id2, user_id: '1234'); Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Hiker(id: id, id2:id2,result:result)),
                );},
                child: Container(
                    height: h * 0.05,
                    width: w * 0.3,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(139, 39, 222, 0.5),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Center(
                      child: Text(
                        'CONFIRM',
                        style: TextStyle(
                          fontSize: h * (0.12 / 5.0),
                          fontWeight: FontWeight.w400,
                          letterSpacing: h * (0.1 / 60.0),
                          color: Colors.white,
                          fontFamily: 'Poppins-Medium',
                        ),
                      ),
                    )),
              ),
            ))
      ]),
      Column(children: [
        SizedBox(height: h * 0.3),
        Row(children: [
          SizedBox(width: w * 0.86),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.location_pin),
            iconSize: h * 0.06,
            color: (isHost4?Colors.yellow:isScanned4
                ? Colors.green
                : (_isPressed4 ? Colors.red : Colors.black)),
          )
        ]),
        SizedBox(height: h * 0.001),
        Row(
          children: [
            SizedBox(width: w * 0.003),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.location_pin),
              iconSize: h * 0.06,
              color: (isHost1?Colors.yellow:isScanned1
                  ? Colors.green
                  : (_isPressed1 ? Colors.red : Colors.black)),
            ),
          ],
        ),
        SizedBox(height: h * 0.00001),
        Row(
          children: [
            SizedBox(width: w * 0.3),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.location_pin),
              iconSize: h * 0.06,
              color: (isHost2?Colors.yellow:isScanned2
                  ? Colors.green
                  : (_isPressed2 ? Colors.red : Colors.black)),
            ),
          ],
        ),
        SizedBox(height: h * 0.02),
        Row(
          children: [
            SizedBox(width: w * 0.7),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.location_pin),
              iconSize: h * 0.06,
              color: (isHost3?Colors.yellow:isScanned3
                  ? Colors.green
                  : (_isPressed3 ? Colors.red : Colors.black)),
            ),
          ],
        ),
      ]),
      Column(
        children: [
          SizedBox(height: h * 0.1),
          Center(
            child: Container(
                child: Text('YOU ARE NOW A HITCH-HIKER',
                    style: TextStyle(
                      fontSize: h * (0.16 / 5.0),
                      fontWeight: FontWeight.bold,
                      letterSpacing: h * (0.1 / 60.0),
                      color: Colors.black,
                      fontFamily: 'Poppins-Medium',
                    ))),
          ),
        ],
      )
    ]));
  }
}
