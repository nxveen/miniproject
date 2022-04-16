import 'package:flutter/material.dart';
import 'package:miniproject/fuel.dart';
import 'package:url_launcher/url_launcher.dart';
class Repair extends StatelessWidget {
  var petrol_pump='';
  var mech1='';
  var p3='';
  var mech2='';
  var p4='';
  Repair({Key? key,required this.petrol_pump,required this.mech1,required this.p3,required this.mech2,required this.p4}
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
                image: AssetImage('assets/repair.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          TextButton(onPressed: () {Navigator.push(context,
            MaterialPageRoute(builder:(context) => Fuel(petrol_pump: petrol_pump,mech1: mech1,p3: p3,mech2: mech2,p4: p4)),);},
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
              SizedBox(height: h*0.45),
              Center(
                child: TextButton(onPressed: ()=> launch("tel://$p3"),
                  child: Container(
                      height: h*0.076,
                      width: w*0.85,
                      decoration: BoxDecoration(color:const Color.fromRGBO(191, 90, 242, 0),
                          borderRadius:const BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.white)
                      ),
                      child: Center(
                        child: Text(
                            '$mech1 +91 $p3',
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
                child: TextButton(onPressed: ()=> launch("tel://$p4"),
                  child: Container(
                      height: h*0.076,
                      width: w*0.85,
                      decoration: BoxDecoration(color:const Color.fromRGBO(191, 90, 242, 0),
                          borderRadius:const BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.white)
                      ),
                      child: Center(
                        child: Text(
                            '$mech2 +91 $p4',
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

            ]
          )
        ]
        )
    );
  }
}