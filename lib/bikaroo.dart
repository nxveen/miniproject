import 'package:flutter/material.dart';
class Bikaroo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bikaroo1.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
        Column(
          children: [
            SizedBox(height: h*0.85),
            Container(height: h*0.15,width: w*1,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromRGBO(139, 39, 222, 0.5),
                      Color.fromRGBO(139, 39, 222, 0.5),

                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              child: Center(
                child: Row(
                  children:[
                      SizedBox(width: w*0.1),
                      FlatButton(onPressed: () {},
                        child: Container(height: h*0.05,width: w*0.3,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color.fromRGBO(56, 27, 97, 1),
                                  Color.fromRGBO(56, 27, 97, 1),

                                ],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20.0))
                          ),
                          child: Center(
                            child: Text('HOST',
                            style: TextStyle(
                            fontSize: h*(0.12/5.0),
                            fontWeight: FontWeight.w400,
                            letterSpacing: h*(0.1/60.0),
                            color: Colors.white,
                            fontFamily: 'Poppins-Medium',),
                        ),
                          )
                        ),
                      ),
                    SizedBox(width:w*0.0),
                    FlatButton(onPressed:() {},
                      child: Container(height: h*0.05,width: w*0.44,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color.fromRGBO(56, 27, 97, 1),
                                  Color.fromRGBO(56, 27, 97, 1),

                                ],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20.0))
                          ),
                          child: Center(
                            child: Text('REQUEST RIDE',
                              style: TextStyle(
                                fontSize: h*(0.12/5.0),
                                fontWeight: FontWeight.w400,
                                letterSpacing: h*(0.1/60.0),
                                color: Colors.white,
                                fontFamily: 'Poppins-Medium',),
                            ),
                          )
                      ),
                    ),
                  ]
                ),
              )
            )
          ]
        ),
        Column(
          children:[
            SizedBox(height: h*0.3),
            Row(
              children:[
                SizedBox(width: w*0.86),
                IconButton(onPressed: () {highlightColor: Colors.red;},
                  icon: Icon(Icons.location_pin),
                  iconSize: h*0.06,
                  highlightColor: Colors.red,
                )
              ]
            ),
            SizedBox(height:h*0.001),
            Row(
              children: [
                SizedBox(width:w*0.003),
                IconButton(onPressed: () {highlightColor: Colors.red;},
                  icon: Icon(Icons.location_pin),
                  iconSize: h*0.06,
                  highlightColor: Colors.red,
                ),
              ],
            ),
            SizedBox(height:h*0.00001),
            Row(
              children: [
                SizedBox(width:w*0.3),
                IconButton(onPressed: () {highlightColor: Colors.red;},
                  icon: Icon(Icons.location_pin),
                  iconSize: h*0.06,
                  highlightColor: Colors.red,
                ),
              ],
            ),
            SizedBox(height:h*0.02),
            Row(
              children: [
                SizedBox(width:w*0.7),
                IconButton(onPressed: () {highlightColor: Colors.red;},
                  icon: Icon(Icons.location_pin),
                  iconSize: h*0.06,
                  highlightColor: Colors.red,
                ),
              ],
            ),
          ]
        )
      ]
      )
    );
  }
}
