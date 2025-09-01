import 'package:flutter/material.dart';
import 'package:buyerasst/home_screen.dart';
import 'package:buyerasst/splash_screen.dart';
import 'package:dcdg/dcdg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen()

    );
  }
}