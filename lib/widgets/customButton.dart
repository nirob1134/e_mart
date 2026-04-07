import 'package:e_mart/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

Widget CustomButton({String? tittle , onPress,}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: redColor,
      padding: EdgeInsets.all(12)
    ),
      onPressed: onPress,
      child: tittle!.text.white.fontFamily(bold).size(18).make()
  );
}