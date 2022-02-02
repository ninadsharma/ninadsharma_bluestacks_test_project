import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ninadsharma_bluestacks_test_project/CommonFunctions/CommonFs.dart';
import 'package:ninadsharma_bluestacks_test_project/HomeFiles/HomeScreen.dart';
import 'package:ninadsharma_bluestacks_test_project/LoginFiles/LoginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    checkLogin();
  }

  void checkLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    t = Timer(const Duration(seconds: 2), () {
      if (pref.getBool("loggedIn") == true) {
        cfs.pushNavigateTo(context: context, destination: HomeScreen());
      } else {
        cfs.pushNavigateTo(context: context, destination: LoginScreen());
      }
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
