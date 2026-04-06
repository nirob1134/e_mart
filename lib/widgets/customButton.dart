import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/strings.dart';
import 'package:flutter/material.dart';

Widget CustomButton({onPress, tittle}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: redColor,
          foregroundColor: Colors.white,
          padding: EdgeInsets.all(12)
      ),
      onPressed: () {
        onPress;
      },
      child: tittle.text.white.fontFamily(bold).make());
}