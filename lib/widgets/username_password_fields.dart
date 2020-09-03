import 'package:flutter/material.dart';

import '../constants.dart';

class UsernamePasswordFields extends StatelessWidget {
  const UsernamePasswordFields({
    Key key,
    this.label,
    this.isPassword,
  }) : super(key: key);

  final String label;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      height: size.height * 0.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        border: Border.all(
            color: kStackBackgroundColor, style: BorderStyle.solid, width: 1.5),
      ),
      child: TextField(
        obscureText: isPassword ? true : false,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          hintText: label,
          hintStyle: TextStyle(fontSize: 20),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
