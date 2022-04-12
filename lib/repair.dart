import 'package:flutter/material.dart';
class Repair extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/repair.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            children:[
              SizedBox(height: h*0.3),
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
                            'REPAIR 1',
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
                            'REPAIR 2',
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
                            'REPAIR 3',
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
                            'REPAIR 4',
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