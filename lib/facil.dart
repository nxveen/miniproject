import 'package:flutter/material.dart';
import 'package:miniproject/bikaroo.dart';
import 'package:miniproject/login.dart';
import 'package:miniproject/fuel.dart';
class Facility extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/page3.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          FlatButton(onPressed: () {Navigator.push(context,
            MaterialPageRoute(builder:(context) => Login()),);},
            child: Padding(
              padding: EdgeInsets.fromLTRB(h*0.007, h*0.03,0 ,0),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: h*0.03,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: h*0.11),
              Center(
                child: FlatButton(
                  onPressed: () {Navigator.push(context,
                    MaterialPageRoute(builder:(context) => Bikaroo()),);},
                  child:Column(
                    children: [
                      Image.asset('assets/img1.jpg'),
                      Text('BIKAROO',
                            style: TextStyle(
                              fontSize: h*(0.12/5.0),
                              fontWeight: FontWeight.bold,
                              letterSpacing: h*(0.1/60.0),
                              color: Colors.white,
                              fontFamily: 'Poppins',
                        )
                      )
                    ]
                  )
                ),
              ),
              SizedBox(height: h*0.11),
              Center(
                child: FlatButton(
                    onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder:(context) => Fuel()),);},
                    child:Column(
                        children: [
                          Image.asset('assets/img2.jpg'),
                          Text('FUEL DELIVERY / VEHICLE REPAIR',
                              style: TextStyle(
                                fontSize: h*(0.12/5.0),
                                fontWeight: FontWeight.bold,
                                letterSpacing: h*(0.1/60.0),
                                color: Colors.white,
                                fontFamily: 'Poppins',
                              )
                          )
                        ]
                    )
                ),
              ),
              SizedBox(height: h*0.12),
              Center(
                child: FlatButton(
                    onPressed: () {},
                    child:Column(
                        children: [
                          Image.asset('assets/vector.png'),
                          Text('JINRICKSHAW',
                              style: TextStyle(
                                fontSize: h*(0.12/5.0),
                                fontWeight: FontWeight.bold,
                                letterSpacing: h*(0.1/60.0),
                                color: Colors.white,
                                fontFamily: 'Poppins',
                              )
                          )
                        ]
                    )
                ),
              ),

            ]
          )
        ]
        )
    );
  }
}
