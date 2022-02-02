import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ninadsharma_bluestacks_test_project/CommonFunctions/CommonFs.dart';
import 'package:ninadsharma_bluestacks_test_project/HomeFiles/HomeScreen.dart';
import 'package:ninadsharma_bluestacks_test_project/UserData/UserData.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  CommonFunctions cfs = CommonFunctions();
  CommonComponents cps = CommonComponents();
  late SharedPreferences pref;
  String? username, password;
  TextEditingController nameControl = TextEditingController(),
      passControl = TextEditingController();
  bool wrongPassword = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 28.h,
            ),
            cps.textField(
              controller: nameControl,
              isPassword: false,
              hint: "Enter Username",
              onChange: (v) {
                setState(() {
                  username = v;
                });
              },
              error: username == null
                  ? false
                  : (username!.length > 11 || username!.length < 3),
            ),
            cps.textField(
              controller: passControl,
              isPassword: true,
              hint: "Enter Password",
              onChange: (v) {
                setState(() {
                  password = v;
                });
              },
              error: password == null
                  ? false
                  : (password!.length > 11 || password!.length < 3),
            ),
            SizedBox(
              height: 4.h,
            ),
            cps.button(
              isActive: password != null && username != null
                  ? password!.length >= 3 &&
                      password!.length <= 11 &&
                      username!.length >= 3 &&
                      username!.length <= 11
                  : false,
              text: "Submit",
              onChange: () async {
                SystemChannels.textInput.invokeMethod('TextInput.hide');
                if (password != null && username != null) {
                  if (password!.length >= 3 &&
                      password!.length <= 11 &&
                      username!.length >= 3 &&
                      username!.length <= 11) {
                    if ((username == User.user2 || username == User.user1) &&
                        password == User.password) {
                      pref = await SharedPreferences.getInstance();
                      pref.setBool("loggedIn", true);
                      cfs.navigateTo(
                        context: context,
                        destination: HomeScreen(),
                      );
                    } else {
                      nameControl.clear();
                      passControl.clear();
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content:
                            Text("Incorrect username or password!\nTry again!"),
                        backgroundColor: Colors.red,
                      ));
                      SystemChannels.textInput.invokeMethod('TextInput.show');
                    }
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
