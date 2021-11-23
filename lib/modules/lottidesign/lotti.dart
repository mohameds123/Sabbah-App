import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sabbah/modules/sabbh_layout/sabbahlayout.dart';
class SplashScreen extends StatefulWidget {
  @override
  _LottiScreenState createState() => _LottiScreenState();
}

class _LottiScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds:3 ),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => SabbahLayout())));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Center(
          child: Container(
            child: Lottie.asset(
              'assets/splash.json',
            ),
          ),
        ),
      ),
    );
  }
}