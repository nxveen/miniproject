import 'package:flutter/material.dart';
import 'package:miniproject/fuel2.dart';
import 'package:miniproject/repair.dart';
class Fuel extends StatelessWidget {
  var petrol_pump='';
  var mech1='';
  var p3='';
  var mech2='';
  var p4='';
  Fuel({Key? key,required this.petrol_pump,required this.mech1,required this.p3,required this.mech2,required this.p4}
      ) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
      Container(
      decoration:const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/fuel.jpg'),
      fit: BoxFit.fill,
    ),
    ),
    ),

        Column(
          children: [
            SizedBox(height: h*0.45),
            Center(
              child: TextButton(onPressed: () {Navigator.push(context,
                MaterialPageRoute(builder:(context) => Fuel2(petrol_pump: petrol_pump,mech1: mech1,p3: p3,mech2: mech2,p4: p4)),);},
                child: Container(
                    height: h*0.076,
                    width: w*0.85,
                    decoration:const BoxDecoration(color: Color.fromRGBO(191, 90, 242, 1),
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
              child: TextButton(onPressed: () {Navigator.push(context,
                MaterialPageRoute(builder:(context) => Repair(petrol_pump: petrol_pump,mech1: mech1,p3: p3,mech2: mech2,p4: p4)),);},
                child: Container(
                    height: h*0.076,
                    width: w*0.85,
                    decoration:const BoxDecoration(
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
