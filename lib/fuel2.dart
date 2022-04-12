import 'package:flutter/material.dart';
import 'package:miniproject/fuelamount.dart';
import 'package:miniproject/fuel.dart';
class Fuel2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/fuel1.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          FlatButton(onPressed: () {Navigator.push(context,
            MaterialPageRoute(builder:(context) => Fuel()),);},
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
            children:[
              SizedBox(height: h*0.49),
              Center(
                child: FlatButton(onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder:(context) => Fuelamount()),);},
                  child: Container(
                      height: h*0.076,
                      width: w*0.85,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(191, 90, 242, 0),
                              Color.fromRGBO(191, 90, 242, 0),

                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.white)
                      ),
                      child: Center(
                        child: Text(
                            'PETROL',
                            style: TextStyle(
                              fontSize: h*(0.12/5.0),
                              fontWeight: FontWeight.bold,
                              letterSpacing: h*(0.05/60.0),
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            )
                        ),
                      )
                  ),
                ),
              ),
              SizedBox(height: h*0.08),
              Center(
                child: FlatButton(onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder:(context) => Fuelamount()),);},
                  child: Container(
                      height: h*0.076,
                      width: w*0.85,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(191, 90, 242, 0),
                              Color.fromRGBO(191, 90, 242, 0),

                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.white)
                      ),
                      child: Center(
                        child: Text(
                            'DIESEL',
                            style: TextStyle(
                              fontSize: h*(0.12/5.0),
                              fontWeight: FontWeight.bold,
                              letterSpacing: h*(0.05/60.0),
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            )
                        ),
                      )
                  ),
                ),
              ),
            ]
          )
        ]
        )
    );
  }
}