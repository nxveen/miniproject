import 'package:flutter/material.dart';
import 'package:miniproject/login.dart';
import 'package:miniproject/main.dart';
class Createaccount extends StatelessWidget {
  TextEditingController c=new TextEditingController();
  TextEditingController d=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/page2.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
            FlatButton(onPressed: () {Navigator.push(context,
    MaterialPageRoute(builder:(context) => Home()),);},
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
                  child:
                  Text(
                      'Create Account',
                  style: TextStyle(
                  fontSize: h*(0.13/5.0),
                  fontWeight: FontWeight.w400,
                  letterSpacing: h*(0.1/60.0),
                  color: Colors.white,
                  fontFamily: 'Poppins-Medium',
                  )
                  )
              ),
              SizedBox(height: h*0.02),
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
                      controller: c,
                      decoration:  InputDecoration(
                        border: InputBorder.none,

                        icon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                              Icons.person,
                              color: Colors.white,
                          ),
                        ),
                        hintText: "Username",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: h*0.019,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: h*0.02),
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

                      decoration:  InputDecoration(
                        border: InputBorder.none,

                        icon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.email_outlined,
                            color: Colors.white,
                          ),
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: h*0.019,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: h*0.02),
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
                      controller: d,
                      obscureText: true,
                      decoration:  InputDecoration(
                        border: InputBorder.none,

                        icon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.lock_outline_rounded,
                            color: Colors.white,
                          ),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: h*0.019,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: h*0.03),
              Center(
                child: FlatButton(onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder:(context) => Login()),);},
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
                            'Create Account',
                            style: TextStyle(
                              fontSize: h*(0.12/5.0),
                              fontWeight: FontWeight.bold,
                              letterSpacing: h*(0.05/60.0),
                              color: Colors.white,
                              fontFamily: 'Poppins-Medium',
                            )
                        ),
                      )
                  ),
                ),
              ),
              SizedBox(height: h*0.04),
              Text('By creating an account or Signing in you agree to our',
                  style: TextStyle(
                  fontSize: h*(0.08/5.0),
                  fontWeight: FontWeight.bold,
                  letterSpacing: h*(0.05/60.0),
                  color: Colors.white,
                  fontFamily: 'Poppins-Medium',
              ),
              ),
              TextButton(onPressed: () {},
                child: Text('Terms and Conditions',
                          style: TextStyle(
                          fontSize: h*(0.08/5.0),
                          fontWeight: FontWeight.bold,
                          letterSpacing: h*(0.05/60.0),
                            color: Colors.white,
                            fontFamily: 'Poppins-Medium',
                        ),
                )
              )
            ]
            ),
        ]
        )
    );
  }
}
