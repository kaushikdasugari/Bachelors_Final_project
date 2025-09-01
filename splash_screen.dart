import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'package:shimmer/shimmer.dart';
import 'package:buyerasst/home_screen.dart';
import 'package:buyerasst/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();

    _mockCheckForSession().then(
            (status) {
          if (status) {
            _navigateToHome();
          } else {
            _navigateToLogin();
          }
        }
    );
  }


  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});

    return true;
  }

  void _navigateToHome(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => HomePageDialogflow()
        )
    );
  }

  void _navigateToLogin(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen()
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Shimmer.fromColors(
              period: Duration(milliseconds: 1500),
              baseColor: Color(0xff7f00ff),
              highlightColor: Color(0xffe100ff),
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "స్పీబా కొనుగోలుదారు అప్లికేషన్",
                  style: TextStyle(
                      fontSize: 20.0,

                      shadows: <Shadow>[
                        Shadow(
                            blurRadius: 18.0,
                            color: Colors.black87,
                            offset: Offset.fromDirection(120, 12)
                        )
                      ]
                  ),
                ),
              ),
            )
          ],


        ),
      ),
    );
  }


}