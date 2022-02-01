import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CommonFunctions {
  navigateTo({context, destination}) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => destination),
    );
  }

  popNavigate({context}) {
    Navigator.pop(context);
  }

  pushNavigateTo({context, destination}) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => destination),
    );
  }

  textValidate(text) {
    if (text.length < 3 || text.isEmpty || text.length > 11) {
      return "Password should contain more than 5 characters";
    }
    return null;
  }
}

class CommonComponents {
  Widget textField({
    hint,
    onChange,
    required bool isPassword,
    validator,
  }) {
    return Container(
      height: 2.h,
      width: 9.w,
      child: TextFormField(
        validator: validator,
        decoration: InputDecoration(
          hintText: hint,
        ),
        onChanged: onChange,
        obscureText: isPassword,
      ),
    );
  }
}
