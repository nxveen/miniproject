import 'package:flutter/material.dart';
import 'package:miniproject/facil.dart';
import 'package:miniproject/main.dart';
import 'package:miniproject/resources/auth_methods.dart';
import 'package:miniproject/utils/utils.dart';
import 'package:miniproject/scan.dart';

class Login extends StatelessWidget {
  TextEditingController d = new TextEditingController();
  TextEditingController e = new TextEditingController();
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
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Padding(
              padding: EdgeInsets.fromLTRB(h * 0.007, h * 0.03, 0, 0),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: h * 0.03,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: h * 0.45),
              Center(
                child: Container(
                  height: h * 0.074,
                  width: w * .85,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white, Colors.white],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(h * 0.016)),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: TextField(
                      controller: e,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Padding(
                          padding: EdgeInsets.fromLTRB(w * 0.0375, 0, 0, 0),
                        ),
                        hintText: " Email",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: h * 0.019,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: h * 0.02),
              Center(
                child: Container(
                  height: h * 0.074,
                  width: w * .85,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white, Colors.white],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(h * 0.016)),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: TextField(
                      controller: d,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Padding(
                          padding: EdgeInsets.fromLTRB(w * 0.0375, 0, 0, 0),
                        ),
                        hintText: " Password",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: h * 0.019,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: h * 0.02),
              Row(children: [
                SizedBox(width: w * 0.51),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: h * 0.016,
                        letterSpacing: 1.0,
                      ),
                    )),
              ]),
              SizedBox(height: h * 0.018),
              Center(
                child: FlatButton(
                  onPressed: () async {
                    String res = await AuthMethods()
                        .loginUser(Email: e.text, Password: d.text);
                    if (res == 'success') {
                    } else {
                      showSnackBar(res, context);
                    }

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QRViewExample()),
                    );
                  },
                  child: Container(
                      height: h * 0.08,
                      width: w * 0.6,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(77, 0, 237, 1),
                              Color.fromRGBO(139, 39, 222, 1),
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      child: Center(
                        child: Text('Login',
                            style: TextStyle(
                              fontSize: h * (0.15 / 5.0),
                              fontWeight: FontWeight.bold,
                              letterSpacing: h * (0.1 / 60.0),
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            )),
                      )),
                ),
              ),
              Row(children: [
                SizedBox(width: w * 0.08),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Dont Have an Account? Sign Up Now!',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: h * 0.021,
                        letterSpacing: 1.0,
                      ),
                    )),
              ]),
              SizedBox(height: h * 0.008),
              Row(children: [
                SizedBox(width: w * 0.455),
                Text(
                  'OR',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: h * 0.026,
                    letterSpacing: 1.0,
                  ),
                ),
              ]),
              SizedBox(height: h * 0.008),
              Row(children: [
                SizedBox(width: w * 0.3),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.facebook),
                  color: Colors.white,
                  iconSize: h * 0.04,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.g_mobiledata_outlined),
                  color: Colors.white,
                  iconSize: h * 0.05,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.circle_outlined),
                  color: Colors.white,
                  iconSize: h * 0.04,
                ),
              ]),
            ],
          ),
        ]));
  }
}
