import 'package:flutter/material.dart';
import 'package:miniproject/facil.dart';
import 'package:miniproject/fuel2.dart';
class Fuel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
      Container(
      decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/fuel.jpg'),
      fit: BoxFit.fill,
    ),
    ),
    ),
        FlatButton(onPressed: () {Navigator.push(context,
          MaterialPageRoute(builder:(context) => Facility()),);},
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
            SizedBox(height: h*0.45),
            Center(
              child: FlatButton(onPressed: () {Navigator.push(context,
                MaterialPageRoute(builder:(context) => Fuel2()),);},
                child: Container(
                    height: h*0.076,
                    width: w*0.85,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromRGBO(191, 90, 242, 1),
                            Color.fromRGBO(191, 90, 242, 1),

                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    child: Center(
                      child: Text(
                          'FUEL DELIVERY',
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
              child: FlatButton(onPressed: () {},
                child: Container(
                    height: h*0.076,
                    width: w*0.85,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromRGBO(191, 90, 242, 1),
                            Color.fromRGBO(191, 90, 242, 1),

                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    child: Center(
                      child: Text(
                          'VEHICLE REPAIRS',
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
