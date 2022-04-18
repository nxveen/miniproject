import 'package:flutter/material.dart';
import 'package:miniproject/fuel2.dart';
class Finalamtt extends StatelessWidget {
  var petrol_pump = '';
  var mech1 = '';
  var p3 = '';
  var mech2 = '';
  var p4 = '';
  int d=0;
  int amt=0;
  Finalamtt(
      {Key? key, required this.petrol_pump, required this.mech1, required this.p3, required this.mech2, required this.p4,required this.d,required this.amt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double finalamt=((amt+(d/40.0)*116.0)+2.0) as double;
    double dcharge=((d/40.0)*116.0+2.0);
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img4.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height:h*0.45),
              Center(
                child: Container(height:h*0.074,width:w*.85,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    gradient:const LinearGradient(
                      colors: [Colors.transparent,Colors.transparent],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(h*0.016)),
                    color: Colors.white,
                  ),
                  child: Center(
                      child: Text('Total Amount: $finalamt  ',style:TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: h*0.029,
                        letterSpacing: 1.0,
                      ),)
                  ),
                ),
              ),
              SizedBox(height:h*0.1),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Delivery Charge: $dcharge',style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: h*0.018,
                  letterSpacing: 1.0,
                ),),
              )
            ],
          ),
        ]
        )
    );
  }
}
