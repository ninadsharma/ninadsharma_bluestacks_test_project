import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ninadsharma_bluestacks_test_project/CommonFunctions/CommonFs.dart';
import 'package:ninadsharma_bluestacks_test_project/LoginFiles/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? t;
  CommonFunctions cfs = CommonFunctions();
  @override
  initState() {
    super.initState();
    t = Timer(const Duration(seconds: 5), () {
      cfs.pushNavigateTo(context: context, destination: LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset(
            'Assets/gametvLogo.png',
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
