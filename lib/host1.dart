import 'package:flutter/material.dart';
import 'package:miniproject/bikaroo.dart';
import 'package:miniproject/resources/host.dart';
bool isScanned4 = false;
bool isScanned3 = false;
bool isScanned2 = false;
bool isScanned1 = false;
bool _isPressed4 = false;
bool _isPressed3 = false;
bool _isPressed2 = false;
bool _isPressed1 = false;
bool isHiker1=false;
bool isHiker2=false;
bool isHiker3=false;
bool isHiker4=false;

class Host extends StatelessWidget {
  var id = '';
  var id2 = '';
  var result='';
  Host({required this.id, required this.id2,required this.result}) {
    isScanned4 = (id == '4' ? true : false);
    isScanned3 = (id == '3' ? true : false);
    isScanned2 = (id == '2' ? true : false);
    isScanned1 = (id == '1' ? true : false);
    _isPressed4 = (id2 == '4' ? true : false);
    _isPressed3 = (id2 == '3' ? true : false);
    _isPressed2 = (id2 == '2' ? true : false);
    _isPressed1 = (id2 == '1' ? true : false);
    isHiker1=(result=='1'?true:false);
    isHiker2=(result=='2'?true:false);
    isHiker3=(result=='3'?true:false);
    isHiker4=(result=='4'?true:false);
  }
  @override
  Widget build(BuildContext context) {
    var txt = (result == '1' || result == '2'
        ? (result == '1' ? 'Cusat Metro Station' : 'Cusat ADM')
        : (result == '3' ? 'Cusat Amenity Centre' : 'School of Engineering'));
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bikaroo1.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavoriteWidget(id: id)),
              );
            },
            child: Padding(
              padding: EdgeInsets.fromLTRB(h * 0.007, h * 0.03, 0, 0),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: h * 0.03,
              ),
            ),
          ),

          Column(children: [
            SizedBox(height: h * 0.3),
            Row(children: [
              SizedBox(width: w * 0.86),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.location_pin),
                iconSize: h * 0.06,
                color: (isHiker4?Colors.yellow:isScanned4
                    ? Colors.green
                    : (_isPressed4 ? Colors.red : Colors.black)),
              )
            ]),
            SizedBox(height: h * 0.001),
            Row(
              children: [
                SizedBox(width: w * 0.003),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.location_pin),
                  iconSize: h * 0.06,
                  color: (isHiker1?Colors.yellow:isScanned1
                      ? Colors.green
                      : (_isPressed1 ? Colors.red : Colors.black)),
                ),
              ],
            ),
            SizedBox(height: h * 0.00001),
            Row(
              children: [
                SizedBox(width: w * 0.3),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.location_pin),
                  iconSize: h * 0.06,
                  color: (isHiker2?Colors.yellow:isScanned2
                      ? Colors.green
                      : (_isPressed2 ? Colors.red : Colors.black)),
                ),
              ],
            ),
            SizedBox(height: h * 0.02),
            Row(
              children: [
                SizedBox(width: w * 0.7),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.location_pin),
                  iconSize: h * 0.06,
                  color: (isHiker3?Colors.yellow:isScanned3
                      ? Colors.green
                      : (_isPressed3 ? Colors.red : Colors.black)),
                ),
              ],
            ),
          ]),
          Column(
            children: [
              SizedBox(height: h * 0.1),
              Center(
                child: Container(color: Color.fromRGBO(139, 39, 222, 0.5),height:h*0.05,width:w*1,
                    child: Center(
                      child: Text(result!='0'?'You have a hiker on your route at $txt':'No hikers on route',
                          style: TextStyle(
                            fontSize: h * (0.1 / 5.0),
                            fontWeight: FontWeight.bold,
                            letterSpacing: h * (0.1 / 60.0),
                            color: Colors.black,
                            fontFamily: 'Poppins-Medium',
                          )),
                    )),
              ),
            ],
          ),
          Column(children: [
            SizedBox(height: h * 0.85),
            Container(
                height: h * 0.15,
                width: w * 1,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(139, 39, 222, 0.5),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Center(
                  child: TextButton(
                    onPressed: () async {await HostRider().endHostRider(start_loc: id,end_loc: id2,user_id: '123');result='0';},
                    child: Container(
                        height: h * 0.05,
                        width: w * 0.8,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(56, 27, 97, 1),
                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                        child: Center(
                          child: Text(
                            'Picked Hitch-Hiker',
                            style: TextStyle(
                              fontSize: h * (0.12 / 5.0),
                              fontWeight: FontWeight.w400,
                              letterSpacing: h * (0.1 / 60.0),
                              color: Colors.white,
                              fontFamily: 'Poppins-Medium',
                            ),
                          ),
                        )),
                  ),
                ))
          ]),
        ]
        )
    );
  }
}
