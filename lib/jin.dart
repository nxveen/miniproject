import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Jin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/jin.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
              children:[
                SizedBox(height: h*0.3),
                Center(
                  child: FlatButton(onPressed: ()=> launch("tel://9608565753") ,
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
                              'KUNJ  +91 9074038004',
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
                SizedBox(height: h*0.05),
                Center(
                  child: FlatButton(onPressed: () {},
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
                              'RAVI   +91 8082965753',
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
                SizedBox(height: h*0.05),
                Center(
                  child: FlatButton(onPressed: () {},
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
                              'SHYAM   +91 90567898920',
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
                SizedBox(height:h*0.05),
                Center(
                  child: FlatButton(onPressed: () {},
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
                              'RAM   +91 9080689821',
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
