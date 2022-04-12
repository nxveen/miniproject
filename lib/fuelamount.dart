import 'package:flutter/material.dart';
import 'package:miniproject/fuel2.dart';
class Fuelamount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery
        .of(context)
        .size
        .width;
    double h = MediaQuery
        .of(context)
        .size
        .height;
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
            MaterialPageRoute(builder:(context) => Fuel2()),);},
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
              SizedBox(height: h*0.5),
              Center(
                child: Container(height:h*0.074,width:w*.85,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    gradient: LinearGradient(
                      colors: [Colors.transparent,Colors.transparent],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(h*0.016)),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration:  InputDecoration(
                        border: InputBorder.none,

                        icon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.attach_money,
                            color: Colors.white,
                          ),
                        ),
                        hintText: "AMOUNT",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: h*0.029,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
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
