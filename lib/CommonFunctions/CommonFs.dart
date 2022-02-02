import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
}

class CommonComponents {
  Widget textField({
    hint,
    onChange,
    required bool isPassword,
    required bool error,
    required TextEditingController controller,
  }) {
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 12),
      margin: const EdgeInsets.only(bottom: 8),
      width: 100.w,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          hintText: hint,
          errorText:
              error ? "Invalid ${isPassword ? 'password' : 'username'}" : null,
          counterText: "",
        ),
        maxLength: 11,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        onChanged: onChange,
        obscureText: isPassword,
      ),
    );
  }

  Widget button({
    text,
    onChange,
    required bool isActive,
  }) {
    return Container(
      margin: const EdgeInsets.all(12),
      color: isActive ? Colors.cyanAccent : Colors.grey.withOpacity(0.2),
      height: 6.h,
      width: 100.w,
      alignment: Alignment.center,
      child: InkWell(
        onTap: onChange,
        child: Text(
          "$text",
          style: TextStyle(
            fontSize: 20,
            color: isActive ? Colors.white : Colors.black,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
