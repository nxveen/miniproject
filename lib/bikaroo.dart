import 'package:flutter/material.dart';
import 'package:miniproject/confirm.dart';
import 'package:miniproject/confirm2.dart';
bool isScanned4=false;
bool isScanned3=false;
bool isScanned2=false;
bool isScanned1=false;
class FavoriteWidget extends StatefulWidget {
  var id='';
   FavoriteWidget({Key? key,required this.id}) : super(key: key);
  @override
  _Bikaroo createState() => _Bikaroo(id: id);
}
class _Bikaroo extends State<FavoriteWidget> {
  var id='';
  _Bikaroo({required this.id}) {isScanned4=(id=='4'? true:false);isScanned3=(id=='3'? true:false);isScanned2=(id=='2'? true:false);isScanned1=(id=='1'? true:false);}
  bool _isPressed4 = false;
  bool _isPressed3 = false;
  bool _isPressed2 = false;
  bool _isPressed1 = false;
  var id2='';
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    var txt=(id=='1'||id=='2'?(id=='1'?'Cusat Metro Station':'Cusat ADM'):(id=='3'?'Cusat Amenity Centre':'School of Engineering'));
    return Scaffold(
      body: Stack(children: [
         Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image:const AssetImage('assets/bikaroo1.jpg'),
              fit: BoxFit.fill,
            colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(1),
                BlendMode.dstATop),
            ),
          ),

        ),
        Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Scanned: $txt',style: TextStyle(
                  fontSize: h*(0.12/5.0),
                  fontWeight: FontWeight.w400,
                  letterSpacing: h*(0.1/60.0),
                  color: Colors.black,
                  fontFamily: 'Poppins-Medium',),),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(height: h*0.85),
            Container(height: h*0.15,width: w*1,
              decoration:const BoxDecoration(
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
                      TextButton(onPressed: () {Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Confirm(id: id,id2: id2)),);},
                        child: Container(height: h*0.05,width: w*0.3,
                          decoration:const BoxDecoration(
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
                    TextButton(onPressed:() {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Confirm2(id: id,id2: id2)),);},
                      child: Container(height: h*0.05,width: w*0.44,
                          decoration:const BoxDecoration(
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
                IconButton(onPressed: () {setState((){if(_isPressed3==false&&_isPressed2==false&&_isPressed1==false&&_isPressed4==false){_isPressed4=true;id2='4';}else{_isPressed4=false;};});},
                  icon:const Icon(Icons.location_pin),
                  iconSize: h*0.06,
                  color:  (isScanned4?Colors.green:(_isPressed4 ?  Colors.red : Colors.black)),
                )
              ]
            ),
            SizedBox(height:h*0.001),
            Row(
              children: [
                SizedBox(width:w*0.003),
                IconButton(onPressed: () {setState((){if(_isPressed3==false&&_isPressed2==false&&_isPressed1==false&&_isPressed4==false){_isPressed1=true;id2='1';}else{_isPressed1=false;};});},
                  icon:const Icon(Icons.location_pin),
                  iconSize: h*0.06,
                  color:  (isScanned1?Colors.green:(_isPressed1 ?  Colors.red : Colors.black)),
                ),
              ],
            ),
            SizedBox(height:h*0.00001),
            Row(
              children: [
                SizedBox(width:w*0.3),
                IconButton(onPressed: () {setState((){if(_isPressed3==false&&_isPressed2==false&&_isPressed1==false&&_isPressed4==false){_isPressed2=true;id2='2';}else{_isPressed2=false;};});},
                  icon:const Icon(Icons.location_pin),
                  iconSize: h*0.06,
                  color:  (isScanned2?Colors.green:(_isPressed2
                      ?  Colors.red
                      : Colors.black)),
                ),
              ],
            ),
            SizedBox(height:h*0.02),
            Row(
              children: [
                SizedBox(width:w*0.7),
                IconButton(onPressed: () {setState((){if(_isPressed3==false&&_isPressed2==false&&_isPressed1==false&&_isPressed4==false){_isPressed3=true;id2='3';}else{_isPressed3=false;};});},
                  icon:const Icon(Icons.location_pin),
                  iconSize: h*0.06,
                  color:  (isScanned3?Colors.green:(_isPressed3
                      ?  Colors.red
                      : Colors.black)),
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
