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
            SizedBox(height: h*0.7),
            Container(height: h*0.3,width: w*1,
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
            )
          ]
        )
      ]
      )
    );
  }
}
